class ChangeCustomerIdToCompanyIdForContact < ActiveRecord::Migration[5.0]
  def change
    rename_column :contacts, :customer_id, :company_id
  end
end
