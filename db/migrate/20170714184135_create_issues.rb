class CreateIssues < ActiveRecord::Migration[5.0]
  def change
    create_table :issues do |t|
      t.string :title
      t.text :description
      t.string :address
      t.integer :user_id
      t.integer :votes, default: 1
      t.boolean :approved, default: false
      t.boolean :active, default: false # when it not yet solved, starts with
                                        # false and becomes true when approved

      t.timestamps
    end
  end
end
