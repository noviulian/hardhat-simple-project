//SPDX-License-Identifier:MIT

pragma solidity ^0.8.20;

import "@openzeppelin/contracts/token/ERC721/ERC721.sol";

contract Test is ERC721 {
    error NotTheOwner();

    address public s_owner;

    string public KING_TOKEN_URI = "mytokenUri";

    string public QUEEN_TOKEN_URI = "mytokenUri";

    constructor() ERC721("CocHeroes", "COCH") {
        s_owner == msg.sender;
    }

    modifier OnyOwner() {
        if (msg.sender != s_owner) {
            revert NotTheOwner();
        }
        _;
    }

    function mintQueen() public {}

    function mintKing() public {}

    function returnKingTokenUri() public view returns (string memory) {
        return KING_TOKEN_URI;
    }

    function returnQueenTokenUri() public view returns (string memory) {
        return QUEEN_TOKEN_URI;
    }
}
