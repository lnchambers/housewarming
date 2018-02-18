class Guest < ApplicationRecord
  validates_presence_of :name, :accompanying
  validates_uniqueness_of :name

  def self.total_accompanying
    sum(:accompanying)
  end
end
