var test_crypto_exchange = artifacts.require("test_crypto_exchange");
var test_coin = artifacts.require("test_coin");
module.exports = async function(deployer) {
  // deployment of exchange
  await deployer.deploy(test_crypto_exchange);
  // deployement of coin on the block chain
  await deployer.deploy(test_coin);

  //test coin reference
  const coin = await test_coin.deployed();
  // exhange reference
  const exchange = await test_crypto_exchange.deployed();
  //transfer all the tokens to the exchange
  await coin.transfer(exchange.address,'100000000000000000000000000');
};