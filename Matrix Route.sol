// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;
/*
--------------------------------------------------------------
 Matrix Route (MRX) - Polygon Network
--------------------------------------------------------------
 Name:        Matrix Route
 Symbol:      MRX
 Supply:      1,000,000,000,000 MRX (1 Trillion)
 Decimals:    18
 Network:     Polygon (PoS)
 Owner:       Renounced automatically on deployment
 Reference:   https://github.com/tempatbloger/MatrixRoute
--------------------------------------------------------------
 Powered by OpenZeppelin - Standard ERC20 Implementation
--------------------------------------------------------------
*/
import { ERC20 } from "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import { Ownable } from "@openzeppelin/contracts/access/Ownable.sol";

contract MatrixRoute is ERC20, Ownable {
    constructor() ERC20("Matrix Route", "MRX") Ownable(msg.sender) {
        _mint(msg.sender, 1_000_000_000_000 * 10 ** decimals());
        renounceOwnership();
    }

    function PROJECT_INFO() public pure returns (string memory) {
        return "Matrix Route (MRX) - Polygon ERC20, Ownership Renounced, Reference: GitHub";
    }
}
