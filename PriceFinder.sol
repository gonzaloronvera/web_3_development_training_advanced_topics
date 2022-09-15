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
        priceFeed = AggregatorV3Interface(0x8A753747A1Fa494EC906cE90E9f37563A8AF630e);
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
