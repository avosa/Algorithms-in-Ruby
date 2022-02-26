=begin
  Here's what the below method is doing:
1. Iterate through the products array
2. For each product, look up the product in the mappings hash
3. If the product is found, return the value of the product
4. If the product is not found, return the product
rescue => exception
=end
  
end
def solution(products, mappings)
    products.map do |product|
      mappings[product]
    end
  end
  
  products = ["CVCD", "SDFD", "DDDF", "SDFD"]
  mappings = {"CVCD" => {"version" => 1, "edition" => "X"}, "SDFD" => {"version" => 2, "edition" => "Z"}, "DDDF" => {"version" => 1}}
  
  puts solution(products, mappings)