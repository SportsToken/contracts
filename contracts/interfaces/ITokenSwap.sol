// SPDX-License-Identifier: MIT
pragma solidity >=0.6.0 <0.8.0;

import "@openzeppelin/contracts/token/ERC20/IERC20.sol";

interface ISwapManager {
    function swapEthToToken(
        uint256 _srcAmount,
        IERC20 _dstToken,
        uint256 _maxDstAmount,
        address _beneficiary
    )
        external payable returns (uint256 dstAmount, uint256 srcReminder);

// Buy 
    function swapTokenToToken(
        IERC20 _srcToken,
        IERC20 _dstToken,
        uint256 _srcAmount,
        uint256 _maxDstAmount,
        address _beneficiary
    )
        external returns (uint256 dstAmount, uint256 srcRemainder);
}