// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC20/IERC20.sol";

contract Vesting {

    IERC20 AX;
    // Hash table mapping user address to token allocation
    mapping (address => uint256) public stakeHolders;
    struct VestingSchedule {
        uint totalEntitled;
        uint lockDuration;
        uint cliffPeriod;
    }

    constructor()
    {
        // AX = IERC20(tokenAddress);
    }

    // Automatically deposit funds 
    function deposit() external
    {
    }

    function addStakeholder(address newStakeholder, uint256 totalAllocatedTokens) public 
    {
        
    }

    // Automatically withdraw funds
    function release() public {

    }

    function getUserContribution(address _beneficiary)
    public view returns (uint256)
    {
        // return contributions[_beneficiary];
    }
}