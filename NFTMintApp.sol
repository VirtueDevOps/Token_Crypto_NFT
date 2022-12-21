pragma solidity ^0.8.0;
import "@openzeppelin/contracts/token/ERC721/SafeERC721.sol";

// This contract represents an NFT that can be minted by paying 0.1 Ether
// It uses the SafeERC721 contract from the OpenZeppelin library
// It also has an owner state variable that is an externally owned account
contract NFTMintable is SafeERC721 {
    address public owner;

    constructor() public {
        // Set the owner to the contract creator
        owner = msg.sender;

        // Set the name and symbol for the NFT
        _setName("Mintable NFT");
        _setSymbol("MNFT");
    }

    // This function lets an externally owned account mint a new NFT by paying 0.1 Ether
    function mint(string memory _tokenId) public payable {
        // Check that the sender has sent at least 0.1 Ether
        require(msg.value >= 0.1 ether, "You must pay 0.1 Ether to mint a new NFT");

        // Mint the new NFT and assign it to the sender
        _mint(msg.sender, bytes32(_tokenId));

        // Send the Ether funds to the owner's address
        owner.transfer(msg.value);
    }
}
