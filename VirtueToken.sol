pragma solidity ^0.8.0;
import "@openzeppelin/contracts/token/ERC20/SafeERC20.sol";

// This contract represents the Virtue Token
// It is an ERC-20 token with the symbol "Virtue" and a total supply of 1,000,000 tokens
contract VirtueToken is SafeERC20 {
    string public name = "Virtue Token";
    string public symbol = "Virtue";
    uint8 public decimals = 18;
    uint public totalSupply = 1000000 * (10 ** uint(decimals));

    constructor() public {
        // Assign all of the tokens to the contract creator
        _mint(msg.sender, totalSupply);
    }
}
