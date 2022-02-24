=begin 
Here's what the below class is doing:
1. It first creates a hash of brackets and their closing counterparts.
2. It then creates an empty stack and a counter variable.
3. It then iterates through the input string.
4. If the character is an opening bracket, it pushes it to the stack.
5. If the character is a closing bracket, it checks if the stack is empty.
6. If it is, it raises an exception.
7. If it isn't, it checks if the closing bracket matches the opening bracket at the top of the stack.
8. If it doesn't, it raises an exception.
9. If it does, it pops the opening bracket from the stack and increments the counter.
10. If the stack is empty at the end of the iteration, it returns the counter.
11. If it isn't, it raises an exception.
=end

class BracketsCounter
    def initialize
      @brackets = {'(' => ')', '{' => '}', '[' => ']'}
      @stack = []
      @count = 0
    end
    
    def count_brackets(input)
      input.each_char do |i|
        if @brackets.keys.include?(i)
          @stack.push(i)
        elsif @brackets.values.include?(i)
          if @stack.empty?
            raise Exception.new('ExpectedlosingBracket')
          elsif @brackets[@stack.pop] != i
            raise Exception.new('UnexpectedBracketClosing')
          else
            @count += 1
          end
        end
      end
      if !@stack.empty?
        raise Exception.new('ExpectedSlosingBracket')
      end
      return @count
    end
  end
  
  input = "begin(wo(dog)od)middle(ste(ca(bridge)t)el)end., prints '5' 
  counter = BracketsCounter.new
  puts counter.count_brackets(input)


