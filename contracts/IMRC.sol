// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

/// @title IMRC – IMERGEA Credit Token
/// @notice 1 IMRC = 1 day of IMERGEA strategic advisory + a unique referral code managed off-chain.
contract IMRC is ERC20 {
    constructor() ERC20("IMERGEA Credit", "IMRC") {
        // Fixed supply: 100 IMRC (with 18 decimals)
        _mint(msg.sender, 100 * 10 ** decimals());
    }
}
