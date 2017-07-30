class AddApprovedToIssues < ActiveRecord::Migration[5.0]
  def change
    add_column :issues, :approved, :boolean, default: false
  end
end
