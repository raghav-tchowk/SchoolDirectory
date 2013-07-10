class CreateAlertType1s < ActiveRecord::Migration
  def change
    create_table :alert_type1s do |t|
      t.string :name
      t.string :detail

      t.timestamps
    end
  end
end
