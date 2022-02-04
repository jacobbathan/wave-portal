const main = async () => {
    const [owner, randomPerson] = await hre.ethers.getSigners();
    const waveContractFactory = await hre.ethers.getContractFactory('WavePortal')
    const waveContract = await waveContractFactory.deploy()
    await waveContract.deployed()

    console.log("Contract deployed to:", waveContract.address)
    console.log("Contract deployed by:", owner.address)

    let waveCount;
    waveCount = await waveContract.getTotalWaves();

    let waveUpTxn = await waveContract.upWave();
    await waveUpTxn.wait();

    
    waveUpTxn = await waveContract.connect(randomPerson).upWave();
    await waveUpTxn.wait();

    waveUpTxn = await waveContract.connect(randomPerson).upWave();
    await waveUpTxn.wait();

    waveUpTxn = await waveContract.connect(randomPerson).upWave();
    await waveUpTxn.wait();

    let waveDownTxn = await waveContract.connect(randomPerson).downWave();
    await waveDownTxn.wait();
    
    waveCount = await waveContract.getTotalWaves();
}

const runMain = async () => {
    try {
        await main();
        process.exit(0)
    } catch (error) {
        console.log(error)
        process.exit(1)
    }
}

runMain()
