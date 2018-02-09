class AddPaymentTypeToCounselors < ActiveRecord::Migration[5.1]
  def change
    add_column :counselors, :payment_type, :string
  end
end
