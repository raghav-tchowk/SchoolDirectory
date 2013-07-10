class CreateEmergencyAlertTypes < ActiveRecord::Migration
  def change
    create_table :emergency_alert_types do |t|
      t.string :name

      t.timestamps
    end
  end
end
