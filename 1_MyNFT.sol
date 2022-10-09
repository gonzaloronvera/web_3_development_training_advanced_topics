// SPDX-License-Identifier: MIT

pragma solidity ^0.8.1;

import "@openzeppelin/contracts/token/ERC721/ERC721.sol";

/*
  Example of Opensea link: https://testnets.opensea.io/assets/goerli/0xc43B8B14C260Fb667cB8CBE830F9FFf38c66f38e/1
*/

    contract MyNFT is ERC721 {
        
        using Strings for uint256;
        
        // Base URI
        string private baseURI = "https://ipfs.io/ipfs/QmSkD7RJXsABotJEfDk2ANGMGbgStuKmi2z2AfNX8BL6be?filename=1-gerardo.json";

        // The token ID
        uint256 private tokenID = 1;

        constructor()
            ERC721("Aaron", "AS")
        {}
        
        function tokenURI(uint256 tokenId) public view virtual override returns (string memory) {
            return string(abi.encodePacked(baseURI, tokenId.toString()));
        }

        function mint() external {
            _mint(msg.sender, tokenID);
        }
    }
