class AddAmountToEntry < ActiveRecord::Migration
  def self.up
    add_column :entries, :amount, :float
  end

  def self.down
    remove_column :entries, :amount
  end
end
