// SPDX-License-Identifier: MIT
pragma solidity >=0.6.0 <0.8.0;

interface IExchanger {
    function exchange (
        address from,
        bytes32 sourceCurrencyKey,
        uint sourceAmount,
        bytes32 destinationCurrencyKey,
        address destinationAddress
    ) external returns (uint amountReceived);

    function exchangeOnBehalf(
        address exchangeForAddress,
        address from,
        bytes32 sourceCurrencyKey,
        uint sourceAmount,
        bytes32 destinationCurrencyKey
    ) external returns (uint amountReceived);

    function settle(address from, bytes32 currencyKey)
    external
    returns (
        uint reclaimed,
        uint refunded,
        uint numEntries
    );
}