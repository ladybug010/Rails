class CreateEntries < ActiveRecord::Migration
  def self.up
    create_table :entries do |t|
      t.string :number
      t.integer :payee_id
      t.integer :category_id
      t.integer :payee_id
      t.integer :account_id
      t.string :memo
      t.boolean :cleared

      t.timestamps
    end
  end

  def self.down
    drop_table :entries
  end
end
