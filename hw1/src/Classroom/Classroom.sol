// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
import {Test, console} from "forge-std/Test.sol";

/* Problem 1 Interface & Contract */
contract StudentV1 {
    uint64 ans = 1000;
    uint64 del = 877;

    function register() external returns (uint256) {
        uint64 tmp = ans;
        if (ans > del)
            ans = ans - del;
        return tmp;
    }
}

/* Problem 2 Interface & Contract */
interface IClassroomV2 {
    function isEnrolled() external view returns (bool);
}

contract StudentV2 {
    uint256 code = 1000;
    function register() external view returns (uint256) {
        if (IClassroomV2(msg.sender).isEnrolled())
            return 123;
        return 1000;
    }
}

/* Problem 3 Interface & Contract */
contract StudentV3 {
    function register() external view returns (uint256) {
        if (gasleft() >= 7000)
            return 1000;
        return 123;
    }
}
