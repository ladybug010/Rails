class Withdrawal < Entry
  validates_uniqueness_of :number, :scope => :account_id
  validates_presence_of :payee_id
end
