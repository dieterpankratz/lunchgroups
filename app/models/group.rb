class Group < ApplicationRecord
  has_many :events
  has_many :employees, through: :events
end
