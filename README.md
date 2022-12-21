VirtueToken:
This contract defines a VirtueToken contract that extends the SafeERC20 contract from the OpenZeppelin library. It sets the name, symbol, and decimals variables to the desired values, and defines a totalSupply of 1,000,000 tokens. It also has a constructor function that mints all of the tokens and assigns them to the contract creator.




NFTMintApp:
This contract defines an NFTMintable contract that extends the SafeERC721 contract from the OpenZeppelin library. It has a public owner state variable that is an externally owned account, and is initialized to the contract creator in the constructor function. The mint function has been updated to send the Ether funds to the owner's address after minting the new NFT.



TradinBot:
Node.js script that swaps Ether for USDC tokens using the Uniswap smart contracts directly on the Ethereum blockchain, using the Ethers.js library to connect to the blockchain with Infura.
