//SPDX-License-Identifier: <SPDX-Licesne>
pragma solidity ^0.6.0;
//mappings
contract MyContractMap{
    mapping(uint => string) public names;
    mapping(uint => Book) public books;
    mapping(address => mapping(uint => Book)) public myBooks;

    struct Book {
        string title;
        string Author;
    }

    constructor() public {
        names[1] = "adam";
        names[2] = "carl";
        names[3] = "Lungelo";
    }

    function addBook(uint _id, string memory _title, string memory _author) public {
        books[_id] = Book(_title, _author);

    }
    function addMyBook(uint _id, string memory _title, string memory _author) public {
        myBooks[msg.sender][_id] = Book(_title, _author);
    }
}
