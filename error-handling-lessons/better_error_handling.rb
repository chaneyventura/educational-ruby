begin
  puts nil + 10
rescue ZeroDivisionError => e 
  puts "Error occured: #{e}"
end

#only takes into account one type of error