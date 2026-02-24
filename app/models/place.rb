class Place < ApplicationRecord
  validates :name, presence: true, uniqueness: true
  # talks to the "places" table
end
