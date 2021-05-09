class AddEmailToInputs < ActiveRecord::Migration[6.1]
  def change
    add_column :inputs, :email, :string
    add_index :inputs, :email
  end
end
