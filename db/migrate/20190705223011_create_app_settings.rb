class CreateAppSettings < ActiveRecord::Migration[5.1]
  def change
    create_table :app_settings do |t|
      t.string :tab_name
      t.string :theme_name

      t.timestamps
    end
  end
end
