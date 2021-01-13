const Debt = artifacts.require("Debt");

module.exports = function(deployer) {
  deployer.deploy(Debt);
};