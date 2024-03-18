require_relative 'food'
  puts "Welcome to your Calorie diary!"

  #must declare this outside the loop!!!!!!
  diary = []
  puts "Enter '1' to create food entry"
  puts "      '2' to show all entries"
  puts "      '3' to remove an entry"
  puts "      '4' to exit"

  loop do           
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
      diary.push(entry)
    when 2
      if diary.empty?
        puts "The current list is empty"
      else
        diary.each do |entry|
          puts "Food: #{entry.name}, Type: #{entry.type}, Calories: #{entry.calories}"
        end
      end
    when 3
      print "Enter Food item to be removed from list:"
      to_be_deleted = gets.chomp
      diary.each_with_index do |element, index|
        if to_be_deleted == element.name
          diary.delete_at(index)
          puts "Item deleted!"
          break
        end
      end
    when 4
      break
    else
      puts "Please enter a valid input."
    end #loop
  end
