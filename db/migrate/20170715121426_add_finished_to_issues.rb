class AddFinishedToIssues < ActiveRecord::Migration[5.0]
  def change
    add_column :issues, :active, :boolean
  end
end
