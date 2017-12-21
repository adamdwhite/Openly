class AddIndexToUsersEmail < ActiveRecord::Migration[5.1]
  def changerail
  add_index :users, :email, unique: true 
  end
end
