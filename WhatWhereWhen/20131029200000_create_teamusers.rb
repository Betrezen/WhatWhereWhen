class AddTeamUserRelation < ActiveRecord::Migration
  def change
    create_table :team_user_relations do |t|
      t.belongs_to :team
      t.belongs_to :user
      t.integer :team_id
      t.integer :user_id
      t.timestamps
    end
    add_index :team_user_relations, :team_id
    add_index :team_user_relations, :user_id
  end
end