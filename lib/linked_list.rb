# NOTE: I left in many comments for myself to better understand what is going on
require_relative 'nodes.rb'

class LinkedList

  attr_accessor :head, :tail

  def initialize
    @head = nil
    @tail = nil
  end

  def append(value)
    #adds new node containing (value) to the end of list
    new_node = Node.new(value)
    if @head.nil?
      @head = new_node # creates node at the head
      @tail = new_node # sets the tail as the new node since it will be the only value
    else
      pointer = @head
      new_node = Node.new(value)
      until pointer.next.nil?
        pointer = pointer.next #moves pointer to the end
      end
      #since pointer has been moved to the end, new_node creation begins at the end
      pointer.next = new_node
      @tail = new_node
    end
  end # end append

  def prepend(value)
    #adds new node containing (value) to the start of list
    #return @head = Node.new(value)
        new_node = Node.new(value)
        if @head.nil? && @tail.nil?
          @head = new_node
          @tail = new_node
          # does the same as the append if it is the first node in the list
        else
         new_node.next = @head # reserves a spot in the list for the new node.
          @head = new_node # sets the new node to the head of the list allowing it to show up at the beginning
        end

  end # end prepend

  def size
    #returns the total number of nodes in the list
    if @head.nil?
      count = 0
    else
      count = 1
      pointer = @head
      while pointer.next != nil
        pointer = pointer.next
        count += 1
      end
    end
    count
  end # end size

  def head
    #returns the first node in the list
    @head.value
  end # end head

  def tail
    #returns the last node in the list
    @tail.value
  end # end tail

  def at(index)
    # returns the node at the given index
    # zero index the same as Arrays
    counter = 0
    pointer = @head
    if @head.nil?
      return nil
    else
      until counter == index
        pointer = pointer.next
        counter += 1
        pointer.next
      end
    return pointer.value
    end

  end # end at method

  def pop
    # removes the last element from the list
   pointer = @head.next
    if self.nil?
      return nil
    else
      until pointer.next.next == nil
        pointer = pointer.next
        pointer.next
      end
      pointer.next = nil
    end
    new_tail = pointer
    @tail.value = new_tail.value # => updates the tail with new_tail variable

  end # End pop method

  def contains?(value)
    #returns true if the passed value is in the list, else, returns false
    pointer = @head #points to the head
    return true if pointer.value == value
    until pointer.value == value || pointer.next.nil? do
      pointer = pointer.next
      pointer.next
      return true if pointer.value == value
      return false if pointer.next.nil?
    end
  end #end contains?

  def find(value)
    # returns the index of the node containing value, or nil if not found
    pointer = @head
      index = 0
    if !self.contains?(value)
      return nil
    else
      until pointer.value == value
        pointer = pointer.next
        pointer.next
        index += 1
      end
      return index
    end
  end # end find

  def to_s
    # represent your LinkedList objects as strings so you can print them out
      #and preview them in the console
      #FORMAT: (value) -> (value) -> (value) -> nil
      current_node = @head
      string = ""
      until current_node.next.nil?
        string += "(#{current_node.value}) -> "
        current_node = current_node.next
      end
      string += "(#{current_node.value}) -> "
      string
  end # end to_s
end # end LinkedList class