class CreateHomies < ActiveRecord::Migration[7.1]
  def change
    create_table :homies do |t|
      t.string :name

      t.timestamps
    end
  end
end
