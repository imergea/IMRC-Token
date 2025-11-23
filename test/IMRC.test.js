const { expect } = require("chai");
const { ethers } = require("hardhat");

describe("IMRC", function () {
  it("should deploy with a total supply of 100 IMRC assigned to deployer", async function () {
    const [owner] = await ethers.getSigners();

    const IMRC = await ethers.getContractFactory("IMRC");
    const imrc = await IMRC.deploy();
    await imrc.waitForDeployment();

    const decimals = await imrc.decimals();
    const totalSupply = await imrc.totalSupply();
    const ownerBalance = await imrc.balanceOf(owner.address);

    const expectedSupply = ethers.parseUnits("100", decimals);

    expect(totalSupply).to.equal(expectedSupply);
    expect(ownerBalance).to.equal(expectedSupply);
  });
});
