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


def reverse_list(list, previous=nil)
  current_list = list.next_node
  list.next_node = previous
  if current_list
    reverse_list(current_list, list)
  else
    list
  end
end

node = LinkedListNode.new(37)
node = LinkedListNode.new(99, node)
node = LinkedListNode.new(12, node)

print_values(node)


puts "--------"

revlist = reverse_list(node)

print_values(revlist)