def input_students
  puts "Please enter the names of the students"
  puts "To finish, just hit return twice"
  #create an empty array
  students = []
  # get the first name
  name = gets.chomp
  # while the name is not empty, repeat this code
  while !name.empty? do
    #add the student hash to the array
    puts "Enter age of student"
    age = gets.chomp
    puts "Enter nationality of student"
    nationality = gets.chomp
    puts "Enter hobby of student"
    hobby = gets.chomp
    students << {name: name, cohort: :november, age: age, 
    nationality: nationality, hobby: hobby}
    puts "Now we have #{students.count} students"
    puts "Enter another student name"
    puts "Press enter twice to finish"
    #get another name from the user
    name = gets.chomp
  end
  # return array of students
  students
end

def print_header
  puts "The students of Villains Academy"
  puts "-------------"
end

def print(students)
  students.each_with_index do |student, index|
    puts "#{index + 1} #{student[:name]} (#{student[:cohort]} cohort) Age: #{student[:age]} 
    Nationality: #{student[:nationality]} Hobby: #{student[:hobby]}"
  end
end

def print_footer(names)
  puts "Overall, we have #{names.count} great students"
end
#nothing happens until we call the methods
students = input_students
print_header
print(students)
print_footer(students)