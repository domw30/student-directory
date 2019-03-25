def input_students
  puts "Please enter the names of the students"
  puts "To finish, just hit return twice"
  #create an empty array
  students = []
  # get the first name
  name = gets.chomp
  puts "Please enter cohort month"
  cohort = gets.chomp
  # while the name is not empty, repeat this code
  while !name.empty? || !cohort.empty? do
    students << {name: name, cohort: cohort}
    puts "Now we have #{students.count} students"
    puts "Enter student name"
    name = gets.chomp
    puts "Please enter cohort month"
    cohort = gets.chomp.to_sym
  end
  # return array of students
  students
end

def print_header
  puts "The students of Villains Academy"
  puts "-------------"
end

def print(students)
  students.each do |student|
    if student[:name].empty?
      puts "No Value (#{student[:cohort]} cohort)"
    elsif student[:cohort].empty?
      puts "#{student[:name]} (No Value)"
    elsif student[:name].empty? && student[:cohort].empty?
      puts "No Value (No Value)"
    else
      puts "#{student[:name]} (#{student[:cohort]} cohort)"
    end
  end
end

def print_footer(students)
  puts "Overall, we have #{students.count} great students"
end
#nothing happens until we call the methods
students = input_students
print_header
print(students)
print_footer(students)