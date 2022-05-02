def longest_chain(input)
    dominoes = input.split(",")
    dominoes.map! { |domino| domino.split("-") }
    dominoes.sort! { |a, b| a[0] <=> b[0] }
    longest_chain = 0
    current_chain = 0
    current_value = dominoes[0][0]
    dominoes.each do |domino|
        if domino[0] == current_value
            current_chain += 1
            current_value = domino[1]
        else
            longest_chain = current_chain if current_chain > longest_chain
            current_chain = 1
            current_value = domino[0]
        end
    end
    longest_chain = current_chain if current_chain > longest_chain
    longest_chain
end
puts longest_chain("1-1,3-5,5-2,2-3,2-4")
puts longest_chain("2-5,5-5,3-1,6-7")
puts longest_chain("1-2,2-3,6-7,8-4,4-3,3-2,2-6")
puts longest_chain("2-2,5-5,3-1,6-7")