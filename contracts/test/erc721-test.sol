// SPDX-License-Identifier: MIT

pragma solidity ^0.8.10;

import Test from "@mangrovedao/hardhat-test-solidity/test.sol";
import "../erc721NFT.sol";
import {IWitnetRandomness} from "../IWIT.sol";

contract ContractTest is DSTest {
    NFTLL l;
    IWitnetRandomness r = IWitnetRandomness(0xa784093826e2894ab3db315f4e05f0f26407bbff));

    function setUp() public {
        l = new NFTLL(r);
    }

    function testMetadata() public {
        l.mintNFT();
        l.mintNFT();
        l.getToken(0);
        l.tokenURI(1);
    }
}