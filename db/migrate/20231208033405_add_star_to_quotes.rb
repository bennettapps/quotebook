class AddStarToQuotes < ActiveRecord::Migration[7.1]
  def change
    add_column :quotes, :star, :boolean
  end
end
