class AddQuoteTypeToQuote < ActiveRecord::Migration[7.1]
  def change
    add_reference :quotes, :quote_type, foreign_key: true
  end
end
