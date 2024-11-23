// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

import 'lib/openzeppelin-contracts-upgradeable/contracts/token/ERC20/IERC20Upgradeable.sol';

interface IERC1404Upgradeable is IERC20Upgradeable {
    /// @notice Detects if a transfer will be reverted and if so returns an appropriate reference code
    /// @param from Sending address
    /// @param to Receiving address
    /// @param value Amount of tokens being transferred
    /// @return Code by which to reference message for rejection reasoning
    /// @dev Overwrite with your custom transfer restriction logic
    function detectTransferRestriction(
        address from,
        address to,
        uint256 value
    ) external view returns (uint8);

    /// @notice Returns a human-readable message for a given restriction code
    /// @param restrictionCode Identifier for looking up a message
    /// @return Text showing the restriction's reasoning
    /// @dev Overwrite with your custom message and restrictionCode handling
    function messageForTransferRestriction(
        uint8 restrictionCode
    ) external view returns (string memory);
}