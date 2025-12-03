// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

/**
 * -----------------------------------------------------------------
 * IMRC Token – IMERGEA Consulting Coupon Token
 * 1 IMRC = 1 Day of Strategic Consulting
 *
 * Services covered by 1 IMRC:
 * - Raise Capital
 * - Buy & Sell
 * - M&A Advisory
 * - Export Business Strategy
 * - Business Valuation
 * - Investor M&A Document Package
 * - Investor Outreach
 *
 * Official Website: https://imergea.com
 * -----------------------------------------------------------------
 * Fixed supply: 100 IMRC
 * Decimals: 18 (standard ERC-20)
 * Owner receives all tokens at deployment
 * No further minting possible (scarcity = value)
 * -----------------------------------------------------------------
 */

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract IMRC is ERC20, Ownable {

    // Public field visible on BaseScan
    string public website = "https://imergea.com";

    constructor()
        ERC20("IMERGEA Consulting Coupon Token", "IMRC")
        Ownable(msg.sender)
    {
        uint256 totalSupply = 100 * 10**decimals();
        _mint(msg.sender, totalSupply);
    }
}
