// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

/*
--------------------------------------------------------------
 Route Matrix (RTMX) - Polygon Network
--------------------------------------------------------------
 Name:        Route Matrix
 Symbol:      RTMX
 Supply:      1,000,000,000,000 RTMX (1 Trillion)
 Decimals:    18
 Network:     Polygon (PoS)
 Owner:       Renounced automatically on deployment
 Reference:   https://github.com/tempatbloger/RouteMatrixProject
--------------------------------------------------------------
 Powered by OpenZeppelin - Standard ERC20 Implementation
--------------------------------------------------------------
*/

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract RouteMatrix is ERC20, Ownable {
    constructor() ERC20("Route Matrix", "RTMX") Ownable(msg.sender) {
        _mint(msg.sender, 1_000_000_000_000 * 10 ** decimals());
        renounceOwnership();
    }

    string public constant PROJECT_INFO = "Route Matrix (RTMX) - Polygon ERC20, Ownership Renounced, Reference: GitHub";
}
