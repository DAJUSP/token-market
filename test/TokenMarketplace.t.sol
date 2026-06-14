// SPDX-License-Identifier: UNLICENSED
pragma solidity =0.8.35;

import {Test} from "forge-std/Test.sol";
import {TokenMarketplace} from "src/TokenMarketplace.sol";
import {ERC20Mock} from "@openzeppelin/contracts/mocks/token/ERC20Mock.sol";

contract TokenMarketplaceTest is Test {
    TokenMarketplace public tokenMarketplace;
    ERC20Mock public erc20Mock;

    function testWhetherTokenPriceIsInitialized() public {
        address owner = makeAddr("owner");
        erc20Mock = new ERC20Mock();

        tokenMarketplace = new TokenMarketplace(address(erc20Mock), owner);

        uint256 tokenPrice = tokenMarketplace.TOKEN_PRICE();

        assertEq(tokenPrice, 0);
    }
}
