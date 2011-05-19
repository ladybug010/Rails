require 'spec_helper'

describe Withdrawal do
  before(:each) do
    @valid_attributes = {
      :number => "123",
      :amount => 1.0,
      :payee_id => 1
    }
    Withdrawal.create!(@valid_attributes)
  end

  it { should validate_presence_of(:number) }
  it { should validate_uniqueness_of(:number).scoped_to(:account_id) }
  it { should validate_presence_of(:payee_id) }
end
