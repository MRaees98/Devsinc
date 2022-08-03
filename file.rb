require 'csv'
test = CSV.read("problems.csv")
ranswer = 0
wanswer = 0
    for i in 0..11
        puts "Question #{i+1} : => What #{test[i][0]} ? "
        answer = gets.chomp.to_i
        if answer == test[i][1].chomp.to_i
            ranswer = ranswer+1
        else
            wanswer = wanswer+1
        end
    end
puts "Rights are #{ranswer} and Wrongs are #{wanswer} ." 