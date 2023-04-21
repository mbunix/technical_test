class AddIndexToTransactions < ActiveRecord::Migration[7.0]
  def change
    add_column :transactions, :datetime, :scheduled_at
    add_index :transactions, :scheduled_at
  end
end
