pragma solidity >=0.4.22 <0.9.0;

// SPDX-License-Identifier: MIT

contract VaccinationCenterRegistry {
    struct VaccinationCenter {
        bool isRegistered;
        string name;
        address centerAddress;
    }

    mapping(uint256 => VaccinationCenter) public centers;

    //register the center
    function registerCenter(
        uint256 _centerId,
        string memory _name,
        address _centerAddress
    ) public {
        VaccinationCenter storage center = centers[_centerId];
        center.isRegistered = true;
        center.name = _name;
        center.centerAddress = _centerAddress;
    }

    //This function validates vaccine center

    function validateCenter(uint256 _centerId, address _centerAddress)
        public
        view
    {
        VaccinationCenter storage center = centers[_centerId];
        require(center.isRegistered, "Validated center is not registered");
        require(
            center.centerAddress == _centerAddress,
            "Registered center's address is different from the past address"
        );
    }
}
