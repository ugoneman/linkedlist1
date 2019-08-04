class LinkedListNode
  attr_accessor :value, :next_node

  def initialize(value, next_node=nil)
    @value = value
    @next_node = next_node
  end
end

def print_values(list_node)
  if list_node
    print "#{list_node.value} --> "
    print_values(list_node.next_node)
  else
    print "nil\n"
    return
  end
end

class Stack
  attr_reader :data

  def initialize
      @data = nil
  end

  # Push a value onto the stack
  def push(value)
      @data = LinkedListNode.new(value, @data)
  end

  # Pop an item off the stack.
  # Remove the last item that was pushed onto the
  # stack and return the value to the user
  def pop
      newdata = @data
      @data = @data.next_node
      return newdata.value
  end

end

def reverse_list(list)
  mystack2 = Stack.new()
  while list
    mystack1 = list.value
    mystack2.push(mystack1)
    list = list.next_node
  end
  return mystack2.data
end

@mystack = Stack.new()
@mystack.push(37)
@mystack.push(99)
@mystack.push(12)
@mystack.push(23)

print_values(@mystack.data)

#mystack1 = Stack.new()
#mystack2 = Stack.new()
#mystack1 = mystack.pop
#mystack2.push(mystack1)
#mystack1 = mystack.pop
#mystack2.push(mystack1)
#mystack1 = mystack.pop
#mystack2.push(mystack1)

#node = LinkedListNode.new(37)
#node = LinkedListNode.new(99, node)
#node = LinkedListNode.new(12, node)

puts "--------"

revlist = reverse_list(@mystack.data)

print_values(revlist)