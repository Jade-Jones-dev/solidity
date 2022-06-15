// SPDX-License-Identifier: UNLICENSED
pragma solidity >=0.8.0;

import "./contract.sol" as externalFile;
//                         ^^^^^^^^^^^^ @FileAliasInImportDirective
//                             ^ @CursorOnFileAliasInImportDirective
import {ToRename, User as ExternalContract} from "./contract.sol";
//                        ^^^^^^^^^^^^^^^^ @RenamedContractInImportDirective
//                         ^ @CursorOnRenamedContractInImportDirective
//      ^^^^^^^^ @OriginalNameInImportDirective
//      ^ @CursorOnOriginalNameInImportDirective

contract C
{
    ExternalContract public externalContract;
//  ^^^^^^^^^^^^^^^^ @RenamedContractInPublicVariable
//        ^ @CursorOnRenamedContractInPublicVariable
    externalFile.ToRename public externalFileContract;
//  ^^^^^^^^^^^^ @FileAliasInPublicVariable
//  ^ @CursorOnFileAliasInPublicVariable
//               ^^^^^^^^ @OriginalNameInPublicVariable
//                      ^ @CursorOnOriginalNameInPublicVariable
}

// ----
// contract:
// -> textDocument/rename {
//     "newName": "Renamed",
//     "position": @CursorOnFileAliasInImportDirective
// }
// <- {
//     "changes": {
//         "rename/import_directive.sol": [
//             {
//                 "newText": "Renamed",
//                 "range": @FileAliasInPublicVariable
//             },
//             {
//                 "newText": "Renamed",
//                 "range": @FileAliasInImportDirective
//             }
//         ]
//     }
// }
// -> textDocument/rename {
//     "newName": "Renamed",
//     "position": @CursorOnRenamedContractInImportDirective
// }
// <- {
//     "changes": {
//         "rename/import_directive.sol": [
//             {
//                 "newText": "Renamed",
//                 "range": @RenamedContractInPublicVariable
//             },
//             {
//                 "newText": "Renamed",
//                 "range": @RenamedContractInImportDirective
//             }
//         ]
//     }
// }
// -> textDocument/rename {
//     "newName": "Renamed",
//     "position": @CursorOnOriginalNameInImportDirective
// }
// <- {
//     "changes": {
//         "rename/contract.sol": [
//             {
//                 "newText": "Renamed",
//                 "range": @ContractInParameter
//             },
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
//                 "range": @ContractInMapping
//             },
//             {
//                 "newText": "Renamed",
//                 "range": @ContractInArrayType
//             },
//             {
//                 "newText": "Renamed",
//                 "range": @ContractInPublicVariable
//             },
//             {
//                 "newText": "Renamed",
//                 "range": @ContractInDefinition
//             }
//         ],
//         "rename/import_directive.sol": [
//             {
//                 "newText": "Renamed",
//                 "range": @OriginalNameInPublicVariable
//             },
//             {
//                 "newText": "Renamed",
//                 "range": @OriginalNameInImportDirective
//             }
//         ]
//     }
// }
// -> textDocument/rename {
//     "newName": "Renamed",
//     "position": @CursorOnRenamedContractInPublicVariable
// }
// <- {
//     "changes": {
//         "rename/import_directive.sol": [
//             {
//                 "newText": "Renamed",
//                 "range": @RenamedContractInPublicVariable
//             },
//             {
//                 "newText": "Renamed",
//                 "range": @RenamedContractInImportDirective
//             }
//         ]
//     }
// }
// -> textDocument/rename {
//     "newName": "Renamed",
//     "position": @CursorOnFileAliasInPublicVariable
// }
// <- {
//     "changes": {
//         "rename/import_directive.sol": [
//             {
//                 "newText": "Renamed",
//                 "range": @FileAliasInPublicVariable
//             },
//             {
//                 "newText": "Renamed",
//                 "range": @FileAliasInImportDirective
//             }
//         ]
//     }
// }
// -> textDocument/rename {
//     "newName": "Renamed",
//     "position": @CursorOnOriginalNameInPublicVariable
// }
// <- {
//     "changes": {
//         "rename/import_directive.sol": [
//             {
//                 "newText": "Renamed",
//                 "range": @OriginalNameInPublicVariable
//             },
//             {
//                 "newText": "Renamed",
//                 "range": @OriginalNameInImportDirective
//             }
//         ]
//     }
// }
