require_relative 'food'
  #must declare this outside the loop!!!!!!
  diary = []

  puts "Welcome to your Calorie diary!"
  puts "Enter '1' to create food entry"
  puts "      '2' to show all entries"
  puts "      '3' to remove an entry"
  puts "      '4' to exit"

  def create(diary)
    print "Enter food name: "
    name = gets.chomp
    print "Enter food type (fruit, veggie, or meat): "
    type = gets.chomp
    print "Enter the amount of calories: "
    calories = gets.chomp 
    entry = Food.new(name, type, calories)
    puts "Entry added!"
    diary.push(entry)
  end

  def display(diary)
    if diary.empty?
      puts "The current list is empty"
    else
      diary.each do |entry|
        puts "Food: #{entry.name}, Type: #{entry.type}, Calories: #{entry.calories}"
      end
    end
  end

  def delete(diary)
    print "Enter Food item to be removed from list:"
    to_be_deleted = gets.chomp
    diary.each_with_index do |element, index|
      if to_be_deleted == element.name
        diary.delete_at(index)
        puts "Item deleted!"
        break
      else
        puts "Please enter a valid item. Returned to main menu"
      end
    end
  end

  loop do           
    number = gets.chomp.to_i
    case number
    when 1
      create(diary)
    when 2
      display(diary)
    when 3
      delete(diary)
    when 4
      break
    else
      puts "Please enter a valid input."
    end #loop
  end
