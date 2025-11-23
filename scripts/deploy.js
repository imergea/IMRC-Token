// scripts/deploy.js

const hre = require("hardhat");

async function main() {
  const [deployer] = await hre.ethers.getSigners();

  console.log("Deploying IMRC with account:", deployer.address);
  console.log(
    "Deployer balance:",
    (await hre.ethers.provider.getBalance(deployer.address)).toString()
  );

  const IMRC = await hre.ethers.getContractFactory("IMRC");
  const imrc = await IMRC.deploy();

  await imrc.waitForDeployment();

  const address = await imrc.getAddress();
  console.log("IMRC deployed to:", address);
}

main().catch((error) => {
  console.error(error);
  process.exitCode = 1;
});
