require_relative 'food'
  puts "Welcome to your Calorie diary!"

  #must declare this outside the loop!!!!!!
  diary = []

  loop do
    puts "Menu Options:"
    puts "'1' to create food entry"
    puts "'2' to exit"
    puts "'3' show foods"
                
    number = gets.chomp.to_i
    
    case number
    when 1
      print "Enter food name: "
      name = gets.chomp
      print "Enter food type (fruit, veggie, or meat): "
      type = gets.chomp
      print "Enter the amount of calories: "
      calories = gets.chomp 
      entry = Food.new(name, type, calories)
      puts "Entry added!"
      
      #
      diary.push(entry)
      puts entry.name
      puts entry.type
      puts entry.calories
      
      if diary.empty?
        puts "EMPTY"
      end

    when 2
      break 
    when 3
      diary.each do |entry|
        puts "#{entry.name}, #{entry.type}, #{entry.calories}"
      end
    end
  end #loop
  
