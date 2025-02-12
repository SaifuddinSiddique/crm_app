class CreateOpportunities < ActiveRecord::Migration[7.1]
  def change
    create_table :opportunities do |t|
      t.string :name
      t.decimal :amount, precision: 10, scale: 2
      t.date :close_date
      t.references :account, null: false, foreign_key: true
      t.references :contact, null: false, foreign_key: true
      t.integer :stage

      t.timestamps
    end
  end
end
