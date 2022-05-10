# Smart Contracts with Solidity
### How to run this project?
1. Clone this repository
1. Use Chrome browser and install `Metamask` extension
1. Use Metamask extension to create new `Wallet`
1. Note down the `Secret Backup Phrase` (`Mnemonics`), it can't be retrieved again.
   Update [deploy.js](./deploy.js) file with your mnemonics in the provider object creation
1. Connect to `Rinkeby Test Network` in Metamask
1. Use [faucet](https://faucets.chain.link/rinkeby) to get some ether in Rinkeby Test Network
1. Node in the main/test network is required to deploy contracts. 
   Creating a node in local and join into the main/test network is time consuming process.
   So use `Infura` node.
1. Signup in [Infura](https://infura.io/), create a project and copy the https endpoints for Rinkeby test network.
   Update [deploy.js](./deploy.js) file with your endpoints in the provider object creation
1. Use any editor/command line tool and run `npm install` from root directory to download all dependencies
1. Disable SSL using `npm config set strict-ssl false` command if any issues downloading dependencies
1. Compile the code by running `node compile.js` command
1. Run test using `npm run test` command, it creates local test network using ganache
1. Deploy the code in `Rinkeby Test Network` using `node deploy.js` command, it returns hash of the address where the contract is deployed
1. Go to [Etherscan](https://rinkeby.etherscan.io/) and use the hash returned in previous step to look at the contract
1. You can also use [Remix](https://remix.ethereum.org/) online IDE to build, deploy & test smart contracts
