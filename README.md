# Foundry Fund Me

A decentralized crowdfunding smart contract built using the **Foundry** framework. This project allows users to fund the contract with Ethereum (ETH) based on a minimum dynamic dynamic value denominated in USD. It utilizes **Chainlink Price Feeds** to fetch real-time ETH/USD conversion rates natively on-chain.

Only the owner who deployed the contract can withdraw the accumulated funds.

---

## 🚀 Features

- **ETH to USD Conversion**: Dynamically calculates token values using Chainlink Data Feeds.
- **Custom Error Handling**: Gas-efficient custom errors (`FundMe__NotOwner()`) instead of expensive `require` strings.
- **Advanced Testing Suite**: Robust test coverage mapping out Unit, Mocked, and Forked Mainnet tests using Foundry's native `forge test`.
- **Flexible DevOps Scripting**: Automatic network configuration mapping using a centralized `HelperConfig.sol` helper utility.

---

## 🛠️ Requirements

Before running the project, ensure you have the following installed on your local machine:

- **[Git](https://git-scm.com/)**: Essential for cloning dependencies. Check with `git --version`.
- **[Foundry](https://getfoundry.sh/)**: The smart contract development toolchain. Check with `forge --version`.

---

## 🏁 Quickstart

### 1. Clone the Repository
```bash
git clone [https://github.com/Henri444444/foundry-fund-me.git](https://github.com/Henri444444/foundry-fund-me.git)
cd foundry-fund-me