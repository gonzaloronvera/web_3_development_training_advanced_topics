# Web3 development workshop - Advanced topics

## Pre-requisites

- Finalise the [Basic Web Development Workshop](https://github.com/gonzaloronvera/web_3_development_training/blob/main/README.md).

## Creating a NFT

- Download [IPFS Desktop](http://docs.ipfs.tech.ipns.localhost:8080/install/ipfs-desktop/).
- Prepare an image that you want to mint and upload it to APFS. Alternatelly, you could use this [Gerardo](https://ipfs.io/ipfs/QmNSNrtgvLc1dYQQCz9KHwkSZUH8M7hUKkyLYK1hkdhn4f?filename=gerardo.jpg).
- Prepare a JSON token for your NFT and upload it to APFS. You can use [this token](https://ipfs.io/ipfs/QmSkD7RJXsABotJEfDk2ANGMGbgStuKmi2z2AfNX8BL6be?filename=1-gerardo.json) as a reference.    
- Modify the code from [MyNFT.sol](https://github.com/gonzaloronvera/web_3_development_training_advanced_topics/blob/main/1_MyNFT.sol) to use your token.
- Publish source code using [Remix](https://remix.ethereum.org/) and validate your contract in [Rinkeby EtherScan](https://rinkeby.etherscan.io/).
- Mint your NFT.
- Go to [OpenSea](https://testnets.opensea.io/) and connect your wallet.
- Validate your NFT is public in [OpenSea](https://testnets.opensea.io/). Your NFT URL should be something like https://testnets.opensea.io/assets/rinkeby/YOUR_CONTRACT_ADDRESS/TOKEN_ID>.
- Sell your NFT and make money!

## Testing a Decentralized oracle

- Explore the [Chainlink data feeds documentation](https://docs.chain.link/docs/get-the-latest-price/).
- Explore the [Ethereum data feeds](https://docs.chain.link/docs/ethereum-addresses/) addresses.
- Publish a smart contract using the code from [2_PriceFinder.sol](https://github.com/gonzaloronvera/web_3_development_training_advanced_topics/blob/main/2_PriceFinder.sol).
- Test the contract.



