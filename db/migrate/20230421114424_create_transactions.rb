class CreateTransactions < ActiveRecord::Migration[7.0]
  def change
    create_table :transactions do |t|
      t.float :amount
      t.string :email
      t.string :phone
      t.datetime :scheduled_at

      t.timestamps
    end
  end
end
