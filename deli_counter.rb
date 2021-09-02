# Write your code here.
katz_deli = []

def line(katz_deli)
    if katz_deli.length == 0
        puts "The line is currently empty."
    else
        persons = katz_deli.to_enum.with_index(1).map do |name, index| 
        "#{index}. #{name}"
        end        
        puts "The line is currently: #{persons.join(" ")}"
    end
end

def take_a_number(katz_deli, guppy)
    katz_deli << guppy 
    puts "Welcome, #{guppy}. You are number #{katz_deli.index(guppy) + 1} in line."
end 
def now_serving(katz_deli)
    if katz_deli.length == 0
        puts "There is nobody waiting to be served!"
    else
        puts "Currently serving #{katz_deli[0]}."
        katz_deli.shift
    end
end