class CreateClients < ActiveRecord::Migration[5.1]
  def change
    create_table :clients do |t|
      t.string :first_name
      t.string :last_name
      t.integer :age
      t.integer :gender
      t.integer :zipcode
      t.string :alias
      t.string :image
      t.boolean :payment

      t.timestamps
    end
  end
end
