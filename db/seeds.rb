UNITS = ['HR', 'DEV', 'PM', 'PR', 'ACC']

puts 'creating employees...'

50.times do
  employee = Employee.new(
    name: Faker::Name.name,
    unit: UNITS.sample
  )
  employee.save!
end
puts 'created 50 employees!'

puts 'creating groups...'

10.times do
  group = Group.new(
    name: Faker::Food.vegetables
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
