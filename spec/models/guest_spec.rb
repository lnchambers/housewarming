require 'rails_helper'

RSpec.describe Guest, type: :model do
  it { should validate_presence_of(:name) }
  it { should validate_presence_of(:accompanying) }
  it { should validate_uniqueness_of(:name) }
end
