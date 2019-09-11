def reverse(head_of_list)

  # Reverse the linked list in place.
  curr_node = head_of_list
  prev_node = nil
  next_node = nil

  while curr_node
    # Copy a pointer to the next element
    # before we overwrite current_node.next.
    next_node = curr_node.next

    # Reverse the 'next' pointer.
    p curr_node
    curr_node.next = prev_node
    p curr_node
    #step forward in the LinkedList
    prev_node = curr_node
    curr_node = next_node

  end
  prev_node
end





# Tests

class LinkedListNode
  attr_accessor :value, :next

  def initialize(value, next_node = nil)
    @value = value
    @next = next_node
  end

  def values
    vs = []

    node = self
    while node
      vs << node.value
      node = node.next
    end

    vs
  end
end

def run_tests
  desc = 'short linked list'
  second = LinkedListNode.new(2)
  first = LinkedListNode.new(1, second)

  result = reverse(first)
  assert_not_nil(result, desc)

  actual = result.values
  expected = [2, 1]
  assert_equal(actual, expected, desc)

  desc = 'long linked list'
  sixth = LinkedListNode.new(6)
  fifth = LinkedListNode.new(5, sixth)
  fourth = LinkedListNode.new(4, fifth)
  third = LinkedListNode.new(3, fourth)
  second = LinkedListNode.new(2, third)
  first = LinkedListNode.new(1, second)

  result = reverse(first)
  assert_not_nil(result, desc)

  actual = result.values
  expected = [6, 5, 4, 3, 2, 1]
  assert_equal(actual, expected, desc)

  desc = 'one element linked list'
  first = LinkedListNode.new(1)

  result = reverse(first)
  assert_not_nil(result, desc)

  actual = result.values
  expected = [1]
  assert_equal(actual, expected, desc)

  desc = 'empty linked list'
  result = reverse(nil)
  assert_nil(result, desc)
end

def assert_equal(a, b, desc)
  puts "#{desc} ... #{a == b ? 'PASS' : "FAIL: #{a.inspect} != #{b.inspect}"}"
end

def assert_nil(value, desc)
  puts "#{desc} ... #{value.nil? ? 'PASS' : "FAIL: #{value} is not nil"}"
end

def assert_not_nil(value, desc)
  puts "#{desc} ... #{value.nil? ? "FAIL: #{value} is nil" : 'PASS'}"
end

run_tests
