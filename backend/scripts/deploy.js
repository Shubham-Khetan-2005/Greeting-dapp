// scripts/deploy.js
const hre = require("hardhat");

async function main() {
  const Hello = await hre.ethers.getContractFactory("HelloWorld");

  const hello = await Hello.deploy();        // Deploys the contract
  await hello.waitForDeployment();           // Waits for the transaction to be mined

  console.log("HelloWorld deployed to:", await hello.getAddress()); // Use getAddress() in v6
}

main().catch((error) => {
  console.error(error);
  process.exitCode = 1;
});
