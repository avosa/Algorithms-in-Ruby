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