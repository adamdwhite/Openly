class CreateCounselors < ActiveRecord::Migration[5.1]
  def change
    create_table :counselors do |t|
      t.string :first_name
      t.string :last_name
      t.integer :age
      t.integer :gender
      t.integer :zipcode
      t.string :image
      t.integer :ssn
      t.string :occ_title
      t.string :occ_state
      t.string :license
      t.string :payment
      t.boolean :agreement

      t.timestamps
    end
  end
end
