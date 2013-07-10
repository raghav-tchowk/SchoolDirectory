class CreateSubjects < ActiveRecord::Migration
  def change
    create_table :subjects do |t|
      t.string :name
      t.integer :section_id
      t.integer :mark
      t.integer :teacher

      t.timestamps
    end
  end
end
