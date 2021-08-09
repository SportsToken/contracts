const StakingRewards = artifacts.require('../contracts/StakingRewards');
const RewardsDistributionRecipient = artifacts.require('../contracts/libraries/RewardsDistributionRecipient.sol');
var token = "0xaa2b20858efdad6ee33aef91007c73979a87492e";
module.exports = function(deployer) {
    deployer.deploy(StakingRewards, token, token);
}