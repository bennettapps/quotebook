class AddHomieIdToHomie < ActiveRecord::Migration[7.1]
  def change
    add_column :homies, :homie_id, :integer
  end
end
