class CreateInputs < ActiveRecord::Migration[6.1]
  def change
    create_table :inputs do |t|
      t.integer :number
      t.boolean :prime_number

      t.timestamps
    end
  end
end
