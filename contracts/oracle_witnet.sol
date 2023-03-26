// SPDX-License-Identifier: MIT
pragma solidity ^0.8.11;

import "witnet-solidity-bridge/contracts/interfaces/IWitnetPriceRouter.sol";

contract MyContract {
    IWitnetPriceRouter immutable public router;
    
    constructor(IWitnetPriceRouter _router) {
        router = _router;
    }
    
    // Returns the CELO / USD price (6 decimals)
    // https://docs.witnet.io/smart-contracts/witnet-data-feeds/addresses/celo
    function getCeloUsdPrice() public view returns (int256 _price) {
        (_price,,) = router.valueFor(bytes4(0x9ed884be));
    }


    // Returns the BTC / USD price (6 decimals)
    function getBtcUsdPrice() public view returns (int256 _price) {
        (_price,,) = router.valueFor(bytes4(0x24beead4));
    }
    
    /// Returns the ETH / USD price (6 decimals)
    function getEthUsdPrice() public view returns (int256 _price) {
        (_price,,) = router.valueFor(bytes4(0x3d15f701));
    }
    
    // Returns the BTC / ETH price (6 decimals), derived from the ETH/USD and the BTC/USD pairs 
    function getBtcEthPrice() public view returns (int256 _price) {
        return (1000000 * getBtcUsdPrice()) / getEthUsdPrice();
    }
}