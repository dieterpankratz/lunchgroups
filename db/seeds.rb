puts 'creating employees...'

10.times do
  employee = Employee.new(
    name: Faker::Name.first_name,
    unit: "HR"
  )
  employee.save!
end

10.times do
  employee = Employee.new(
    name: Faker::Name.first_name,
    unit: "DEV"
  )
  employee.save!
end

10.times do
  employee = Employee.new(
    name: Faker::Name.first_name,
    unit: "PM"
  )
  employee.save!
end

10.times do
  employee = Employee.new(
    name: Faker::Name.first_name,
    unit: "PR"
  )
  employee.save!
end

10.times do
  employee = Employee.new(
    name: Faker::Name.first_name,
    unit: "ACC"
  )
  employee.save!
end

puts 'created 50 employees!'

puts 'creating groups...'
foods = ['🍕', '🍔', '🍟', '🧀', '🥨', '🌶', '🌭', '🥗', '🥔', '🥦']

foods.each do |food|
  group = Group.new(
    name: food
  )
  group.save!
end

puts 'created 10 groups!'
puts 'creating 1 event (means all the assignments!) ...'
employees = Employee.all
groups = Group.all
employees.each do |employee|
  event = Event.new(
    date: Date.today,
    employee: employee,
    group: groups.sample
  )
  event.save!
end

puts 'created 1 event!'
