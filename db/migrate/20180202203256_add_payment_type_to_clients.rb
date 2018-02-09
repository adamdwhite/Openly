class AddPaymentTypeToClients < ActiveRecord::Migration[5.1]
  def change
    add_column :clients, :payment_type, :string
  end
end
