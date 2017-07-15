class AddVotesToIssues < ActiveRecord::Migration[5.0]
  def change
    add_column :issues, :votes, :integer, default: 1
  end
end
