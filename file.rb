require 'csv'
test = CSV.read("problems.csv")
Rans = 0
Wans = 0
    for i in 0..11
        puts "Question #{i+1} : => What is the Answer #{test[i][0]} ? "
        answer = gets.chomp.to_i
        if answer == test[i][0].chomp.to_i
            Rans = Rans+1
        else
            Wans = Wans+1
        end
    end
puts "Rights are #{Rans} and Wrongs are #{Wans} ." 