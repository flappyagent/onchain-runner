// contracts/RunnerScore.sol
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract RunnerScore {
    mapping(address => uint256) public record;
    event ScoreSaved(address indexed player, uint256 score);

    function save(uint256 newScore) external {
        if (newScore > record[msg.sender]) {
            record[msg.sender] = newScore;
            emit ScoreSaved(msg.sender, newScore);
        }
    }
}
