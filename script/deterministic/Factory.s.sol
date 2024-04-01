pragma solidity ^0.8.0;

import "./DeterministicDeploy.s.sol";

library FactoryDeploy {
    address payable constant EXPECTED_KERNEL_FACTORY_ADDRESS = payable(0x29bB1E145757E0eE61465f44f44ca04D38236e98);
    bytes constant KERNEL_FACTORY_CODE =
        hex"0000000000000000000000000000000000000000000000000000000000000000608060405234801561001057600080fd5b50604051610c43380380610c4383398101604081905261002f916100b0565b6100388261005e565b600080546001600160a01b0319166001600160a01b0392909216919091179055506100ea565b6001600160a01b0316638b78c6d8198190558060007f8be0079c531659141344cd1fd0a4f28419497f9722a3daafe3b4186f6b6457e08180a35b50565b6001600160a01b038116811461009857600080fd5b600080604083850312156100c357600080fd5b82516100ce8161009b565b60208401519092506100df8161009b565b809150509250929050565b610b4a806100f96000396000f3fe6080604052600436106101095760003560e01c80638da5cb5b11610095578063c23a5cea11610064578063c23a5cea14610279578063db4c545e14610299578063f04e283e146102bc578063f2fde38b146102cf578063fee81cf4146102e257600080fd5b80638da5cb5b1461020b578063b0d691fe14610224578063bb30a97414610244578063bb9fe6bf1461026457600080fd5b80635414dff0116100dc5780635414dff01461017b57806354d1f13d1461019b578063584465f2146101a35780636544c828146101c3578063715018a61461020357600080fd5b80630396cb601461010e5780632569296214610123578063296601cd1461012b5780634d6cb7001461015b575b600080fd5b61012161011c366004610991565b610315565b005b610121610384565b61013e610139366004610a1c565b6103d4565b6040516001600160a01b0390911681526020015b60405180910390f35b34801561016757600080fd5b5061013e610176366004610a78565b610464565b34801561018757600080fd5b5061013e610196366004610ac4565b6104b8565b6101216104eb565b3480156101af57600080fd5b506101216101be366004610add565b610527565b3480156101cf57600080fd5b506101f36101de366004610add565b60016020526000908152604090205460ff1681565b6040519015158152602001610152565b610121610551565b34801561021757600080fd5b50638b78c6d8195461013e565b34801561023057600080fd5b5060005461013e906001600160a01b031681565b34801561025057600080fd5b5061012161025f366004610afa565b610565565b34801561027057600080fd5b50610121610598565b34801561028557600080fd5b50610121610294366004610add565b6105fb565b3480156102a557600080fd5b506102ae610665565b604051908152602001610152565b6101216102ca366004610add565b61067e565b6101216102dd366004610add565b6106be565b3480156102ee57600080fd5b506102ae6102fd366004610add565b63389a75e1600c908152600091909152602090205490565b61031d6106e5565b600054604051621cb65b60e51b815263ffffffff831660048201526001600160a01b0390911690630396cb609034906024016000604051808303818588803b15801561036857600080fd5b505af115801561037c573d6000803e3d6000fd5b505050505050565b60006202a30067ffffffffffffffff164201905063389a75e1600c5233600052806020600c2055337fdbf36a107da19e49527a7176a1babf963b4b0ff8cde35ee35d6cd8f1f9ac7e1d600080a250565b6001600160a01b03841660009081526001602052604081205460ff1661040d5760405163fb10180960e01b815260040160405180910390fd5b60006bffffffffffffffffffffffff801685858560405160200161043393929190610b38565b60408051601f19818403018152919052805160209091012016905061045a86828787610700565b9695505050505050565b6000806bffffffffffffffffffffffff801685858560405160200161048b93929190610b38565b60408051601f1981840301815291905280516020909101201690506104af816104b8565b95945050505050565b6000806104c3610665565b905060ff600053806035523060601b6001528260155260556000209150600060355250919050565b63389a75e1600c523360005260006020600c2055337ffa7b8eab7da67f412cc9575ed43464468f9bfbae89d1675917346ca6d8fe3c92600080a2565b61052f6106e5565b600080546001600160a01b0319166001600160a01b0392909216919091179055565b6105596106e5565b610563600061072c565b565b61056d6106e5565b6001600160a01b03919091166000908152600160205260409020805460ff1916911515919091179055565b6105a06106e5565b600080546040805163bb9fe6bf60e01b815290516001600160a01b039092169263bb9fe6bf9260048084019382900301818387803b1580156105e157600080fd5b505af11580156105f5573d6000803e3d6000fd5b50505050565b6106036106e5565b60005460405163611d2e7560e11b81526001600160a01b0383811660048301529091169063c23a5cea90602401600060405180830381600087803b15801561064a57600080fd5b505af115801561065e573d6000803e3d6000fd5b5050505050565b60008061067061076a565b608960139091012092915050565b6106866106e5565b63389a75e1600c52806000526020600c2080544211156106ae57636f5e88186000526004601cfd5b600090556106bb8161072c565b50565b6106c66106e5565b8060601b6106dc57637448fbae6000526004601cfd5b6106bb8161072c565b638b78c6d819543314610563576382b429006000526004601cfd5b60008360601c33148460601c151761072057632f6348366000526004601cfd5b6104af858585856108a9565b638b78c6d81980546001600160a01b039092169182907f8be0079c531659141344cd1fd0a4f28419497f9722a3daafe3b4186f6b6457e0600080a355565b6040513060701c801561081057666052573d6000fd607b8301527f3d356020355560408036111560525736038060403d373d3d355af43d6000803e60748301527f3735a920a3ca505d382bbc545af43d6000803e6052573d6000fd5b3d6000f35b60548301527f14605757363d3d37363d7f360894a13ba1a3210667c828492db98dca3e2076cc60348301523060148301526c607f3d8160093d39f33d3d337382525090565b66604c573d6000fd60758301527f3d3560203555604080361115604c5736038060403d373d3d355af43d6000803e606e8301527f3735a920a3ca505d382bbc545af43d6000803e604c573d6000fd5b3d6000f35b604e8301527f14605157363d3d37363d7f360894a13ba1a3210667c828492db98dca3e2076cc602e83015230600e8301526c60793d8160093d39f33d3d336d82525090565b6000806108b461076a565b90506089601382012060ff60005380603552503060601b60015284601552605560002091506000603552813b61098857846089601383016000f59150816109035763301164256000526004601cfd5b8581527f360894a13ba1a3210667c828492db98dca3e2076cc3735a920a3ca505d382bbc602082015282846040830137600080846040018334865af1610960573d6109565763301164256000526004601cfd5b3d6000803e3d6000fd5b85827f09e48df7857bd0c1e0d31bb8a85d42cf1874817895f171c917f6ee2cea73ec20600080a35b50949350505050565b6000602082840312156109a357600080fd5b813563ffffffff811681146109b757600080fd5b9392505050565b6001600160a01b03811681146106bb57600080fd5b60008083601f8401126109e557600080fd5b50813567ffffffffffffffff8111156109fd57600080fd5b602083019150836020828501011115610a1557600080fd5b9250929050565b60008060008060608587031215610a3257600080fd5b8435610a3d816109be565b9350602085013567ffffffffffffffff811115610a5957600080fd5b610a65878288016109d3565b9598909750949560400135949350505050565b600080600060408486031215610a8d57600080fd5b833567ffffffffffffffff811115610aa457600080fd5b610ab0868287016109d3565b909790965060209590950135949350505050565b600060208284031215610ad657600080fd5b5035919050565b600060208284031215610aef57600080fd5b81356109b7816109be565b60008060408385031215610b0d57600080fd5b8235610b18816109be565b915060208301358015158114610b2d57600080fd5b809150509250929050565b82848237909101908152602001919050560000000000000000000000002595F7Cd55BedEdaA09e8988a9B4daef5aEaDF820000000000000000000000005ff137d4b0fdcd49dca30c7cf57e578a026d2789";

    function deploy() internal returns (address) {
        DeterministicDeploy.checkDeploy("factory", EXPECTED_KERNEL_FACTORY_ADDRESS, KERNEL_FACTORY_CODE);
        return EXPECTED_KERNEL_FACTORY_ADDRESS;
    }
}
