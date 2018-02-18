class Guest < ApplicationRecord
  validates_presence_of :name, :accompanying
  validates_uniqueness_of :name
end
