require 'spec_helper'

describe Category do
  before(:each) do
    @valid_attributes = {
      :name => "value for name"
    }
  end

  it "should create a new instance given valid attributes" do
    Category.create!(@valid_attributes)
  end
  
  it { should validate_presence_of(:name) }
  it { should have_many(:entries) }
end
