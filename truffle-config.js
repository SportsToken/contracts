
 const HDWalletProvider = require('@truffle/hdwallet-provider');
 const fs = require('fs');
 const mnemonic = fs.readFileSync(".secret").toString().trim();

module.exports = {

  networks: {
    localhost: {
     host: "127.0.0.1",     // Localhost (default: none)
     port: 8545,            // Standard Ethereum port (default: none)
     network_id: "*",       // Any network (default: none)
    },
    matic: { // MATIC MAINNET
      provider: () => new HDWalletProvider(mnemonic, `https://rpc-mumbai.matic.today`),
      network_id: 137,
      confirmations: 2,
      timeoutBlocks: 200,
      skipDryRun: true
    },
    mumbai: { //MATIC TESTNET
      provider: function() {
        return new HDWalletProvider(mnemonic, "https://matic-mumbai.chainstacklabs.com");
      },
      network_id: 80001,
      confirmations: 2,
      timeoutBlocks: 200,
      skipDryRun: true,
      chainId: 80001
    },
    bsc: { // BINANCE SMART CHAIN MAINNET
      provider: () => new HDWalletProvider(mnemonic, `https://bsc-dataseed1.binance.org`),
      network_id: 56,
      confirmations: 10,
      timeoutBlocks: 200,
      skipDryRun: true
    },
    bsc_testnet: { //BINANCE SMART CHAIN TESTNET
      provider: () => new HDWalletProvider(mnemonic, `https://data-seed-prebsc-1-s1.binance.org:8545`),
      network_id: 97,
      confirmations: 10,
      timeoutBlocks: 200,
      skipDryRun: true
    },
    ropsten: {
      provider: function() {
        return new HDWalletProvider(mnemonic, "https://ropsten.infura.io/v3/81a0954561a94859a0c84f8be1d3afa6");
      },
      network_id: 3,
      gasPrice: 20000000000, // 20 GWEI
      gas: 3716887 // gas limit, set any number you want
    },
    rinkeby: {
      provider: function() {
        return new HDWalletProvider(mnemonic, "https://rinkeby.infura.io/v3/81a0954561a94859a0c84f8be1d3afa6");
      },
      network_id: 4
    },
    kovan: {
      provider: function() {
        return new HDWalletProvider(mnemonic, "https://kovan.infura.io/v3/81a0954561a94859a0c84f8be1d3afa6");
      },
      network_id: 42
    },
    main: {
      provider: function() {
        return new HDWalletProvider(mnemonic, "https://mainnet.infura.io/v3/81a0954561a94859a0c84f8be1d3afa6");
      },
      network_id: 1
    }
  },

  // Set default mocha options here, use special reporters etc.
  mocha: {
    // timeout: 100000
  },

  // Configure your compilers
  compilers: {
    solc: {
      version: "^0.8.0",    // Fetch exact version from solc-bin (default: truffle's version)
      // docker: true,        // Use "0.5.1" you've installed locally with docker (default: false)
      // settings: {          // See the solidity docs for advice about optimization and evmVersion
      //  optimizer: {
      //    enabled: false,
      //    runs: 200
      //  },
      //  evmVersion: "byzantium"
      // }
    }
  }
};
