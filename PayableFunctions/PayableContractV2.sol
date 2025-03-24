//SPDX-License-Identifier: LGPL-3.0-only

pragma solidity 0.8.24;

contract PayableContractV2 {

    function sendEther() public payable { }

    function withdrawEther(uint256 amount) public {

        // recipient + call + valor ether + datos
        (bool success,) = msg.sender.call{value: amount}("");
        require(success, "Ether was not sent.");
    }

}