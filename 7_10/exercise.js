class Node {
  constructor(data) {
    this.data = data;
    this.next = null;
  }
}

/*
Example: making a valid linked list of nodes
["A"]-->["B"]-->["C"]-->["D"]-->["E"]-->
*/

const a = new Node("A");
const b = new Node("B");
const c = new Node("C");
const d = new Node("D");
const e = new Node("E");

a.next = b;
b.next = c;
c.next = d;
d.next = e;

/*
Example: making an invalid linked list of nodes (contains a cycle)
["F"]-->["G"]-->["H"]
          ^       |
          |       v
        ["J"]<--["I"]
*/
const f = new Node("F");
const g = new Node("G");
const h = new Node("H");
const i = new Node("I");
const j = new Node("J");

f.next = g;
g.next = h;
h.next = i;
i.next = j;
j.next = g;

/*
TODO: write a function that determines whether a given node is part of a valid
linked list.  (It should return false if the "list" contains a cycle, true otherwise)

Example IO:
validLinkedList(a)
=> true
validLinkedList(f)
=> false
*/

// Floyd's Algorithm

function validLinkedList2(node) {
  let slowNode = node;
  let fastNode = node;

  while(slowNode && fastNode && fastNode.next){
    slowNode = slowNode.next;
    fastNode = fastNode.next.next;
    if (slowNode === fastNode) {
      return false
    }
  }
  return true
}

validLinkedList2(a)

function validLinkedList(node) {
  let nextList = node
  let checkedList = []
  checkedList.push(node.data)
  nextList = nextList.next

  //gets the length of the linkedList
  while(nextList){
    if (checkedList.includes(nextList.data)){
      return false
    } else {
      checkedList.push(nextList.data)
      nextList = nextList.next
    }
  }
  return true
}

// validLinkedList(g)
// validLinkedList(a)
