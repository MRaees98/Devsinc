require 'csv'
require time
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

puts "If you want to file name change, So enter 1 ."

flag = gets.chomp.to_i
if flag == 1
    puts "Enter the new FileName .CSV"
    FileName = gets
    file.rename("problems.csv" + FileName + ".csv")
end