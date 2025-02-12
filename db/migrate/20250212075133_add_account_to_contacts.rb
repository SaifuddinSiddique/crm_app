class AddAccountToContacts < ActiveRecord::Migration[7.1]
  def change
    add_reference :contacts, :account, foreign_key: true
  end
end