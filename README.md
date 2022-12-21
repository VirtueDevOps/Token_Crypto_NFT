VirtueToken:
This contract defines a VirtueToken contract that extends the SafeERC20 contract from the OpenZeppelin library. It sets the name, symbol, and decimals variables to the desired values, and defines a totalSupply of 1,000,000 tokens. It also has a constructor function that mints all of the tokens and assigns them to the contract creator.

Note that this is just one way to create an ERC-20 token, and there are many other factors to consider when creating a token, such as security and testing. This example should be used as a starting point and should be modified and tested thoroughly before being deployed to the main Ethereum network.


NFTMintApp:
This contract defines an NFTMintable contract that extends the SafeERC721 contract from the OpenZeppelin library. It has a public owner state variable that is an externally owned account, and is initialized to the contract creator in the constructor function. The mint function has been updated to send the Ether funds to the owner's address after minting the new NFT.

Note that this is just one way to create an NFT that can be minted by paying Ether, and there are many other factors to consider when creating an NFT, such as security and testing. This example should be used as a starting point and should be modified and tested thoroughly before being deployed to the main Ethereum network.
