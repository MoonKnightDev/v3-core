// SPDX-License-Identifier: GPL-3.0-or-later
pragma solidity >=0.8.16;

import { Ownable } from "../utils/Ownable.sol";
import { AppStorage } from "../libraries/LibAppStorage.sol";
import { C } from "../C.sol";

contract ConstantsFacet is Ownable {
    AppStorage internal s;

    /*------------------------*
     * PUBLIC WRITE FUNCTIONS *
     *------------------------*/

    function setCollateral(address _collateral) external onlyOwner {
        s.constants.collateral = _collateral;
    }

    function setMuon(address _muon) external onlyOwner {
        s.constants.muon = _muon;
    }

    function setMuonAppId(bytes32 _muonAppId) external onlyOwner {
        s.constants.muonAppId = _muonAppId;
    }

    function setMinimumRequiredSignatures(uint8 _minimumRequiredSignatures) external onlyOwner {
        s.constants.minimumRequiredSignatures = _minimumRequiredSignatures;
    }

    function setProtocolFee(uint256 _protocolFee) external onlyOwner {
        s.constants.protocolFee = _protocolFee;
    }

    function setLiquidationFee(uint256 _liquidationFee) external onlyOwner {
        s.constants.liquidationFee = _liquidationFee;
    }

    function setProtocolLiquidationShare(uint256 _protocolLiquidationShare) external onlyOwner {
        s.constants.protocolLiquidationShare = _protocolLiquidationShare;
    }

    function setCVA(uint256 _cva) external onlyOwner {
        s.constants.cva = _cva;
    }

    function setRequestTimeout(uint256 _requestTimeout) external onlyOwner {
        s.constants.requestTimeout = _requestTimeout;
    }

    function setMaxOpenPositionsCross(uint256 _maxOpenPositionsCross) external onlyOwner {
        s.constants.maxOpenPositionsCross = _maxOpenPositionsCross;
    }

    /*-----------------------*
     * PUBLIC VIEW FUNCTIONS *
     *-----------------------*/

    function getPrecision() external pure returns (uint256) {
        return C.getPrecision();
    }

    function getPercentBase() external pure returns (uint256) {
        return C.getPercentBase();
    }

    function getCollateral() external view returns (address) {
        return C.getCollateral();
    }

    function getMuon() external view returns (address) {
        return C.getMuon();
    }

    function getMuonAppId() external view returns (bytes32) {
        return C.getMuonAppId();
    }

    function getMinimumRequiredSignatures() external view returns (uint8) {
        return C.getMinimumRequiredSignatures();
    }

    function getProtocolFee() external view returns (uint256) {
        return C.getProtocolFee().value;
    }

    function getLiquidationFee() external view returns (uint256) {
        return C.getLiquidationFee().value;
    }

    function getProtocolLiquidationShare() external view returns (uint256) {
        return C.getProtocolLiquidationShare().value;
    }

    function getCVA() external view returns (uint256) {
        return C.getCVA().value;
    }

    function getRequestTimeout() external view returns (uint256) {
        return C.getRequestTimeout();
    }

    function getMaxOpenPositionsCross() external view returns (uint256) {
        return C.getMaxOpenPositionsCross();
    }
}
