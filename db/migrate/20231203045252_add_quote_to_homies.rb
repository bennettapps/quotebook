class AddQuoteToHomies < ActiveRecord::Migration[7.1]
  def change
    add_reference :quotes, :homie, foreign_key: true
  end
end
