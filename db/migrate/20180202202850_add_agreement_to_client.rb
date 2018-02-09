class AddAgreementToClient < ActiveRecord::Migration[5.1]
  def change
    add_column :clients, :agreement, :boolean
  end
end
