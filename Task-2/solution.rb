=begin
Here's what the below method is doing:
1. It iterate through each character in the string input
2. It checks if the current character is equal to the next character
3. If it is, it returns the current character
4. If it isn't, it continues to the next character
5. If it reaches the end of the string, it return nil
=end
def first_repeated_character(string)
    string.chars.each do |char|
      return char if string.count(char) > 1
    end
    nil
  end
  
  puts first_repeated_character("ABCA")
  puts first_repeated_character("BCABA")
  puts first_repeated_character("glovol")
  puts first_repeated_character("ABC")