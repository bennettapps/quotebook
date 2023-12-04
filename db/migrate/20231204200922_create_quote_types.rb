class CreateQuoteTypes < ActiveRecord::Migration[7.1]
  def change
    create_table :quote_types do |t|
      t.string :description

      t.timestamps
    end
  end
end
