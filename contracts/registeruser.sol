pragma solidity >=0.4.22 <0.9.0;

// SPDX-License-Identifier: MIT
import "contracts/vaccineregister.sol";
import "contracts/acceptrules.sol";

//hash map
contract VaccinationRegistry {
    struct Vaccination {
        bool isRegistered;
        uint256 centerId;
        uint256 timestamp;
        string vaccineCodeType;
        string vaccineCode;
        bytes32 personId;
    }

    VaccinationCenterRegistry public vaccinationCenterRegistry;
    VaccinationAcceptanceRules public vaccinationAcceptanceRules;

    mapping(bytes32 => Vaccination) public vaccinations;

    constructor(
        VaccinationCenterRegistry _vaccinationCenterRegistry,
        VaccinationAcceptanceRules _vaccinationAcceptanceRules
    ) public {
        vaccinationCenterRegistry = _vaccinationCenterRegistry;
        vaccinationAcceptanceRules = _vaccinationAcceptanceRules;
    }

    // validate the vaccination center registering the certificate, then compute the proof, and finally record the vaccination itself.
    function registerVaccination(
        uint256 _centerId,
        uint256 _timestamp,
        string memory _vaccineCodeType,
        string memory _vaccineCode,
        bytes32 _personId
    ) public returns (bytes32) {
        vaccinationCenterRegistry.validateCenter(_centerId, msg.sender);
        bytes32 recordId =
            computeCertificateProof(
                _centerId,
                _timestamp,
                _vaccineCodeType,
                _vaccineCode,
                _personId
            );
        Vaccination storage record = vaccinations[recordId];
        record.isRegistered = true;
        record.centerId = _centerId;
        record.timestamp = _timestamp;
        record.vaccineCodeType = _vaccineCodeType;
        record.vaccineCode = _vaccineCode;
        record.personId = _personId;
        return recordId;
    }

    //To standardize the personal id computation while avoiding recording of the actual personal data in the transaction log on the blockchain we define a pure function computing the Keccak 256 hash of the combined personal data fields in the same smart contract that will be run without committing a transaction to the ledger

    function computePersonId(
        string memory _fullName,
        string memory _birthDate,
        string memory _passportNumber,
        string memory _nationality
    ) public pure returns (bytes32) {
        bytes32 personId =
            keccak256(
                abi.encode(_fullName, _birthDate, _passportNumber, _nationality)
            );
        return personId;
    }

    //certificate of vaccine
    function computeCertificateProof(
        uint256 _centerId,
        uint256 _timestamp,
        string memory _vaccineCodeType,
        string memory _vaccineCode,
        bytes32 _personId
    ) public pure returns (bytes32) {
        bytes32 proof =
            keccak256(
                abi.encode(
                    _centerId,
                    _timestamp,
                    _vaccineCodeType,
                    _vaccineCode,
                    _personId
                )
            );
        return proof;
    }

    //ensure vaccination

    function validateVaccination(
        string memory _area,
        uint256 _departureTime,
        bytes32 _certificateProof,
        bytes32 _personId
    ) public view {
        Vaccination storage record = vaccinations[_certificateProof];
        require(record.isRegistered, "Vaccination is not registered");
        require(
            record.personId == _personId,
            "Vaccinated person mismatch is detected"
        );
        vaccinationAcceptanceRules.validateVaccination(
            _area,
            _departureTime,
            record.timestamp,
            record.vaccineCodeType,
            record.vaccineCode,
            "valid"
        );
    }
}
