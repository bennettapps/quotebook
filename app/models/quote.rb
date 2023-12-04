class Quote < ApplicationRecord
    belongs_to :homie
    belongs_to :quote_type
end
