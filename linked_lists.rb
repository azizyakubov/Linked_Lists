class Node
     attr_accessor :value, :next_node
     def initialize(value = nil, next_node = nil)
       @value = value
       @next_node = next_node
     end
     def value
       @value
     end
end

class LinkedList
  def initialize
    @head = Node.new("head", nil)
    @tail = @head
  end
  def append(value) #Add a new node to the end of the list
    node_to_add = Node.new(value)
    if(@head == nil)
      @head = node_to_add
      @tail = @head
    else
      @tail.next_node = node_to_add
      @tail = node_to_add
    end
  end
  def prepend(value) #Add a new node to start of list
    node_to_add = Node.new(value)
    if(@head == nil)
      @head = node_to_add
      @tail = @head
    else
      node_to_add.next_node = @head
      @head = node_to_add
    end
  end
  def size #Return total num nodes in list
    current_node = @head
    i = 0
    until current_node == nil do
      current_node = current_node.next_node
      i += 1
    end
    i
  end
  def head #Return the first node in list
    @head.value
  end
  def tail #Return the last node in list
    @tail.value
  end
  def at(index) #Return node at specified index
    if(index > self.size)
      print "Index out of bounds!"
      return nil
    end
    i = @head
    1.upto(index) do
      i = i.next_node
    end
    i.value
  end
  def pop #Remove tail node from list
  end
  def contains?(data) #Return true if argument matches item in list, false if not
  end
  def find(data) #Return index of node containing specified data, nil if false
  end
  def to_s #Print out the entire list as strings, like the example below
    puts "(data) -> (data) -> (data) -> nil"
  end
#Extra Credit:
def insert_at(index) #Inserts data to given index
end
def remove_at(index) #Removes node at given index, updates list with new node locations
end
end




cattery = LinkedList.new
puts cattery.head
cattery.prepend("butt")
cattery.append("Trashbeard")
puts cattery.tail
puts cattery.size
puts cattery.at(4)
