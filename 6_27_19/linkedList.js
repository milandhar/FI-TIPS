class Node {
  constructor(data) {
    this.data = data;
    this.next = null;
  }
}

class LinkedList {
  constructor() {
    this.head = null;
  }

  // "unshift" is the JavaScript term for prepending (AKA adding to the front)
  unshift(data) {
    const node = new Node(data);
    if (this.head) {
      node.next = this.head;
    }
    this.head = node;
  }
}

// Example: making a list [5,4,3,2,1]
const numList = new LinkedList();
numList.unshift(1);
numList.unshift(2);
numList.unshift(3);
numList.unshift(4);
numList.unshift(5);

// Example: printing out the contents of the list
let currentNode = numList.head;
while(currentNode) {
  console.log(currentNode.data);
  currentNode = currentNode.next;
}

/*
TODO: write a function that prints the k-th to last node

list: ["hello", "world"], k: 1 ==> "world"
list: [1,2,3,4,5], k: 2 ==> 4
*/
function getKthFromEnd(list, k) {
  let i = 0
  let endOfList = false
  let nextList = list.head

  //gets the length of the linkedList
  while(nextList){
    nextList = nextList.next
    i++
  }

  //need to code the actual solution here
  // find the node at i-k

}
