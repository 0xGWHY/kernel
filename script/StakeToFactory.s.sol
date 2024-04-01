pragma solidity ^0.8.0;

import "src/factory/KernelFactory.sol";
import "I4337/interfaces/IStakeManager.sol";
import "forge-std/Script.sol";
import "forge-std/console.sol";

contract StakeToFactory is Script {
    address constant DEPLOYER = 0x2595F7Cd55BedEdaA09e8988a9B4daef5aEaDF82;
    address constant ENTRYPOINT_0_6 = 0x5FF137D4b0FDCD49DcA30c7CF57E578a026d2789;
    address payable constant EXPECTED_KERNEL_ADDRESS = payable(0xd3082872F8B06073A021b4602e022d5A070d7cfC);
    address payable constant EXPECTED_KERNEL_FACTORY_ADDRESS = payable(0x29bB1E145757E0eE61465f44f44ca04D38236e98);

    function run() public {
        uint256 deployerPrivateKey = vm.envUint("DEPLOYER_PRIVATE_KEY");
        vm.startBroadcast(deployerPrivateKey);
        KernelFactory factory = KernelFactory(EXPECTED_KERNEL_FACTORY_ADDRESS);
        IEntryPoint entryPoint = IEntryPoint(ENTRYPOINT_0_6);
        IStakeManager.DepositInfo memory info = entryPoint.getDepositInfo(address(factory));
        if (info.stake < 1e17) {
            factory.addStake{value: 1e17 - info.stake}(86400);
        }
        vm.stopBroadcast();
    }
}
