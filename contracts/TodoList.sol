pragma solidity ^0.5.0;

contract TodoList {
    uint public taskCount = 0;

    struct Task {
        uint id;
        string content;
        bool completed;
    }

    mapping(uint => Task) public tasks;

    constructor() public {
        createdTask("Hello World!");
    }

    function createdTask(string memory _content) public {
        // determine the id of task
        taskCount ++;
        tasks[taskCount] = Task(taskCount, _content, false);
    }
}

