class AddAddressToIssues < ActiveRecord::Migration[5.0]
  def change
    add_column :issues, :address, :string
  end
end
