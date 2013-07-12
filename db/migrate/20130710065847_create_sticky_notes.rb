class CreateStickyNotes < ActiveRecord::Migration
  def change
    create_table :sticky_notes do |t|
    	t.string "title"
		t.string "subject"
		t.date "target_date"
		t.boolean "remind_me"
		t.string "priority"

      t.timestamps
    end
  end
end
