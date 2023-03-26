# oracle
## What is Oralce?
An oracle in the context of blockchain and smart contracts is a third-party service or software that provides external data to a blockchain network. In other words, an oracle is a trusted source of information that can be accessed by smart contracts running on a blockchain.

The use of oracles is necessary in situations where smart contracts require access to data that is not available on the blockchain, such as market data, weather conditions, or the outcome of a sporting event. Smart contracts rely on oracles to retrieve this external data and trigger certain actions based on it.

Oracles are used to make smart contracts more versatile and useful in real-world applications. They enable smart contracts to interact with external systems and data, opening up new possibilities for automation, financial instruments, and other applications.

However, it's important to note that the use of oracles introduces potential risks, such as the possibility of inaccurate or manipulated data being fed into the smart contract. It is therefore important to carefully design and implement oracles, as well as to verify the authenticity and accuracy of the data they provide.

## Smart contract 
This smart contract is an example of a contract that utilizes the IWitnetPriceRouter interface from the Witnet Solidity Bridge. The IWitnetPriceRouter interface provides access to external price feeds that can be used in smart contracts.

The contract has a constructor that takes an IWitnetPriceRouter instance as an argument and assigns it to an immutable public variable called router. This variable will be used by the functions of the contract to access price data from external sources.

The contract has four functions that retrieve price data from different external sources.

The getCeloUsdPrice() function retrieves the CELO / USD price from the IWitnetPriceRouter instance using the valueFor() method with the argument bytes4(0x9ed884be), which is the identifier for the CELO / USD price feed.

The getBtcUsdPrice() function retrieves the BTC / USD price using the valueFor() method with the argument bytes4(0x24beead4), which is the identifier for the BTC / USD price feed.

The getEthUsdPrice() function retrieves the ETH / USD price using the valueFor() method with the argument bytes4(0x3d15f701), which is the identifier for the ETH / USD price feed.

Finally, the getBtcEthPrice() function derives the BTC / ETH price using the prices retrieved from the BTC / USD and ETH / USD price feeds. It does this by first retrieving the BTC / USD price using getBtcUsdPrice(), then retrieving the ETH / USD price using getEthUsdPrice(). It then calculates the BTC / ETH price as (1000000 * getBtcUsdPrice()) / getEthUsdPrice(). The multiplication by 1000000 is used to maintain the same number of decimals for all the prices (6 decimals).

## Conclusion
Overall, this smart contract is an example of how external price feeds can be accessed and utilized in smart contracts, enabling them to interact with the real world and make more complex decisions based on external data.