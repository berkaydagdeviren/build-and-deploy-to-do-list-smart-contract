// SPDX-License-Identifier: MIT

pragma solidity ^0.8.7;

contract TodoList {
    
    struct Todo {
        string text;
        bool completed;
    }

    Todo[] public todos; // Todo array initialized with Todo struct

    //create todo function
    function createTodoText(string calldata text) external {
        todos.push(Todo({
            text: text,
            completed: false
        }));
    }

    // update todo function
    function updateTodoText(uint index, string calldata text) external {
        todos[index].text = text;
    }

    //get todo function
    function getTodo(uint index) external view returns(string memory, bool) {
        Todo storage todo = todos[index];
        return (todo.text, todo.completed);
    }

    function toggleCompleted(uint index) external {
        todos[index].completed = !todos[index].completed;
    }
}
