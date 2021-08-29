pragma solidity >=0.4.22 <0.9.0;

// SPDX-License-Identifier: MIT

pragma experimental ABIEncoderV2;

import "./safemath.sol";

contract VaccinationAcceptanceRules {
    using SafeMath for uint256;

    struct RuleSet {
        bool isRegistered;
        uint256 timeBeforeDeparture;
        mapping(bytes32 => bool) vaccines;
    }

    mapping(string => RuleSet) public rules;

    function registerRules(
        string memory _area,
        uint256 _timeBeforeDeparture,
        string[2][] memory _acceptedVaccines // array of code type, code
    ) public {
        require(
            _timeBeforeDeparture >= 0,
            "Time before departure must be positive"
        );
        RuleSet storage ruleSet = rules[_area];
        ruleSet.isRegistered = true;
        ruleSet.timeBeforeDeparture = _timeBeforeDeparture;
        for (uint256 i = 0; i < _acceptedVaccines.length; i++) {
            bytes32 vaccineId = keccak256(
                abi.encode(_acceptedVaccines[i][0], _acceptedVaccines[i][1])
            );
            ruleSet.vaccines[vaccineId] = true;
        }
    }

    function validateVaccination(
        string memory _area,
        uint256 _departureTime,
        uint256 _vaccinationTime,
        string memory _vaccineCodeType,
        string memory _vaccineCode
    ) public view {
        RuleSet storage ruleSet = rules[_area];
        require(ruleSet.isRegistered, "Vaccination rules are not registered ");

        uint256 passedTime = _departureTime.sub(_vaccinationTime);
        require(
            ruleSet.timeBeforeDeparture >= passedTime,
            "Vaccination is outdated. Expired."
        );

        bytes32 vaccineId = keccak256(
            abi.encode(_vaccineCodeType, _vaccineCode)
        );
        bool acceptedVaccine = ruleSet.vaccines[vaccineId];
        require(acceptedVaccine, "Unaccepted");
    }
}
