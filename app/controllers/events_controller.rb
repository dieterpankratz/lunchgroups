class EventsController < ApplicationController

  def current_event_home
    @events = Event.all
  end

  def shuffle
    groups = Group.all
    array_of_groups = Array.new(groups.length){ Array.new }

    employees_hash = Employee.all.group_by { |employee| employee.unit }
    # employees_hash = { "DEV" => [<EMPLOYEE01>, <EMPL..>], "HR" => [<EM>,<EM>, ..].. }
    employees_hash.each_value.map(&:shuffle!)
    employees = employees_hash.values.each do |unit|
      unit.each_with_index do |employee, i|
        array_of_groups[i] << employee
      end
    end
    Event.destroy_all
    array_of_groups.each_with_index do |group, i|
      group.each do | employee |
        Event.create!(
          employee: employee,
          group: groups[i]
        )
      end
    end
    @events = Event.all
  end
end
