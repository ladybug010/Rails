class Entry < ActiveRecord::Base
  belongs_to :account
  belongs_to :category
  belongs_to :payee
  validates_presence_of :number
  validates_numericality_of :amount
end
