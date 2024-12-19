# REDPIZ-Token
Official repository for the REDPIZ token on BNB Chain

## Table of Contents
- [Overview](#overview)
- [Contracts](#contracts)
- [Deployment](#deployment)
- [Interaction](#interaction)
- [Testing](#testing)
- [Contributing](#contributing)
- [License](#license)

## Overview
The REDPIZ token is a custom ERC20 token deployed on the BNB Chain. This repository contains the Solidity smart contracts and related resources for the token.

## Contracts
- **`SimpleToken.sol`**: Implements the REDPIZ token with standard ERC20 functionalities and custom features.
- **`Ownable.sol`**: Defines ownership, allowing certain functions to be restricted to the contract owner.
- **`draft-IERC6093.sol`**: Interface outlining expected functionalities for contracts adhering to the ERC6093 draft standard.
- **`ERC20.sol`**: Standard implementation of the ERC20 token, including basic functionalities like transferring tokens and checking balances.
- **`ERC20Burnable.sol`**: Extends the ERC20 standard to include token burning capabilities.
- **`IERC20Metadata.sol`**: Interface adding optional metadata functions to the ERC20 standard.
- **`IERC20.sol`**: Standard interface for ERC20 tokens, defining essential functions and events.
- **`Context.sol`**: Provides information about the current execution context, including the sender of the transaction and its data.

## Deployment
### Prerequisites
- [Node.js](https://nodejs.org/)
- [Hardhat](https://hardhat.org/)

### Setup
```bash
git clone https://github.com/Martian00001/REDPIZ-Token.git
cd REDPIZ-Token
npm install

## Configuration
cp .env.example .env

## Compile Contracts
npx hardhat compile

## Deploy Contracts
npx hardhat run scripts/deploy.js --network bsc


**6. Interaction:**
```markdown
## Interaction
### Using Hardhat Console
Start the console:
```bash
npx hardhat console --network bsc

const Token = await ethers.getContractFactory("REDPIZ");
const token = await Token.attach("YOUR_DEPLOYED_CONTRACT_ADDRESS");

// Check total supply
const totalSupply = await token.totalSupply();
console.log(totalSupply.toString());

// Transfer tokens
const tx = await token.transfer("RECIPIENT_ADDRESS", ethers.utils.parseUnits("100", 18));
await tx.wait();


**7. Testing:**
```markdown
## Testing
To run tests:
```bash
npx hardhat test


**8. Contributing:**
```markdown
## Contributing
We welcome contributions! Please submit issues and pull requests for any improvements or suggestions.

## License
This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.


