// SPDX-License-Identifier: UNLICENSED
pragma solidity >=0.8.0;

contract ToRename
//          ^ @CursorOnContractDefinition
//       ^^^^^^^^ @ContractInDefinition
{
}

contract User
{
    ToRename public publicVariable;
//  ^^^^^^^^ @ContractInPublicVariable
//     ^ @CursorOnPublicVariableType



    function getContract() public returns (ToRename)
                                  //       ^^^^^^^^ @ContractInReturnParameter
//                                            ^ @CursorOnReturnParameter
    {
        return new ToRename();
        //         ^^^^^^^^ @ContractInReturnExpression
//                    ^ @CursorOnReturnExpression
    }
}
// ----
// -> textDocument/rename {
//     "newName": "Renamed",
//     "position": @CursorOnContractDefinition
// }
// <- {
//     "changes": {
//         "rename/contract.sol": [
//             {
//                 "newText": "Renamed",
//                 "range": @ContractInReturnExpression
//             },
//             {
//                 "newText": "Renamed",
//                 "range": @ContractInReturnParameter
//             },
//             {
//                 "newText": "Renamed",
//                 "range": @ContractInPublicVariable
//             },
//             {
//                 "newText": "Renamed",
//                 "range": @ContractInDefinition
//             }
//         ]
//     }
// }
// -> textDocument/rename {
//     "newName": "Renamed",
//     "position": @CursorOnReturnParameter
// }
// <- {
//     "changes": {
//         "rename/contract.sol": [
//             {
//                 "newText": "Renamed",
//                 "range": @ContractInReturnExpression
//             },
//             {
//                 "newText": "Renamed",
//                 "range": @ContractInReturnParameter
//             },
//             {
//                 "newText": "Renamed",
//                 "range": @ContractInPublicVariable
//             },
//             {
//                 "newText": "Renamed",
//                 "range": @ContractInDefinition
//             }
//         ]
//     }
// }
// -> textDocument/rename {
//     "newName": "Renamed",
//     "position": @CursorOnReturnExpression
// }
// <- {
//     "changes": {
//         "rename/contract.sol": [
//             {
//                 "newText": "Renamed",
//                 "range": @ContractInReturnExpression
//             },
//             {
//                 "newText": "Renamed",
//                 "range": @ContractInReturnParameter
//             },
//             {
//                 "newText": "Renamed",
//                 "range": @ContractInPublicVariable
//             },
//             {
//                 "newText": "Renamed",
//                 "range": @ContractInDefinition
//             }
//         ]
//     }
// }
// -> textDocument/rename {
//     "newName": "Renamed",
//     "position": @CursorOnPublicVariableType
// }
// <- {
//     "changes": {
//         "rename/contract.sol": [
//             {
//                 "newText": "Renamed",
//                 "range": @ContractInReturnExpression
//             },
//             {
//                 "newText": "Renamed",
//                 "range": @ContractInReturnParameter
//             },
//             {
//                 "newText": "Renamed",
//                 "range": @ContractInPublicVariable
//             },
//             {
//                 "newText": "Renamed",
//                 "range": @ContractInDefinition
//             }
//         ]
//     }
// }
