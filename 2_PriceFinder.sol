// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

import "@chainlink/contracts/src/v0.8/interfaces/AggregatorV3Interface.sol";

contract PriceFinder {

    AggregatorV3Interface internal priceFeed;

    /** 
        Contract definition here: https://docs.chain.link/docs/get-the-latest-price/
        Contracts addresses can be found here: https://docs.chain.link/docs/ethereum-addresses/
    **/

    constructor() {
        priceFeed = AggregatorV3Interface(0xD4a33860578De61DBAbDc8BFdb98FD742fA7028e);
    }

    /**
     * Returns the latest price
     */
    function getPrice() public view returns (int) {
        (,int price,,,) = priceFeed.latestRoundData();

        // Removing the 8 decimals from the answer
        return price / 100000000;
    }

    function getConversionRate(int ethAmount) public view returns (int){
        int price = getPrice();
        int answer = (price * ethAmount);  
        return answer;
    }
}
