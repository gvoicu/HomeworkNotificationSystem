class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :name
      t.integer :project_type
      t.integer :subject_id
      t.datetime :deadline
      t.string :where
      t.integer :priority
      t.string :other_details

      t.timestamps
    end
  end
end
