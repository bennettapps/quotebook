class AddInsanityToQuotes < ActiveRecord::Migration[7.1]
  def change
    add_column :quotes, :insanity, :integer
  end
end
