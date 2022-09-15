// SPDX-License-Identifier: MIT

pragma solidity ^0.8.1;

import "@openzeppelin/contracts/token/ERC721/ERC721.sol";

/*
  Example of Opensea link: https://testnets.opensea.io/assets/rinkeby/0xf9918041febe797ea166299c946aebcc4d889937/1
*/

    contract MyNFT is ERC721 {
        
        using Strings for uint256;
        
        // Base URI
        string private baseURI = "https://ipfs.io/ipfs/QmSkD7RJXsABotJEfDk2ANGMGbgStuKmi2z2AfNX8BL6be?filename=1-gerardo.json";

        // The token ID
        uint256 private tokenID = 1;

        constructor()
            ERC721("Gonz", "GR")
        {}
        
        function tokenURI(uint256 tokenId) public view virtual override returns (string memory) {
            return string(abi.encodePacked(baseURI, tokenId.toString()));
        }

        function mint() external {
            _mint(msg.sender, tokenID);
        }
    }