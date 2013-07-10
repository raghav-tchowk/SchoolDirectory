class CreateEventAlertTypes < ActiveRecord::Migration
  def change
    create_table :event_alert_types do |t|
      t.string :name

      t.timestamps
    end
  end
end
