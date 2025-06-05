
// Module: todo_list
module todo_list::todo_list;

use std::string::String;

public struct TodoList has key, store {
    id: UID,
    items: vector<String>
}

public fun new(ctx: &mut TxContext): TodoList {
    let list = TodoList {
        id: object::new(ctx),
        items: vector::empty<String>()
    };
    (list)
}


// For Move coding conventions, see
// https://docs.sui.io/concepts/sui-move-concepts/conventions


