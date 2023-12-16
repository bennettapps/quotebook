json.extract! quote, :id, :quote, :created_at, :updated_at, :star
json.url homie_quote_url(@homie, quote, format: :json)
