# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

["hollup", "let him cook", "caught in 4k", "random", "outta pocket", "ayo", "no shot"].each do |quote_type_name|
  QuoteType.find_or_create_by!(description: quote_type_name)
end

["Prof Stroup Himself", "Jesse", "Roy", "Zack", "Peter", "ThAt OnE GuY FrOm SyRiA"].each do |homie_name|
  Homie.find_or_create_by!(name: homie_name)
end

Quote.create!(
  homie_id: Homie.find_or_create_by!(name: "Roy").id,
  quote: "Everyone in Japan looks the same",
  quote_type: QuoteType.find_or_create_by!(description: "outta pocket"),
  insanity: 1945,
  star: true
)

Quote.create!(
  homie_id: Homie.find_or_create_by!(name: "Prof Stroup Himself").id,
  quote: "No Problem",
  quote_type: QuoteType.find_or_create_by!(description: "random"),
  insanity: 0,
  star: false
)

Quote.create!(
  homie_id: Homie.find_or_create_by!(name: "Prof Stroup Himself").id,
  quote: "Sanity check",
  quote_type: QuoteType.find_or_create_by!(description: "let him cook"),
  insanity: 999,
  star: true
)

Quote.create!(
  homie_id: Homie.find_or_create_by!(name: "ThAt OnE GuY FrOm SyRiA").id,
  quote: "I'm gonna cry",
  quote_type: QuoteType.find_or_create_by!(description: "random"),
  insanity: -4,
  star: false
)

Quote.create!(
  homie_id: Homie.find_or_create_by!(name: "Zack").id,
  quote: "You would think that",
  quote_type: QuoteType.find_or_create_by!(description: "random"),
  insanity: -69,
  star: false
)

Quote.create!(
  homie_id: Homie.find_or_create_by!(name: "Peter").id,
  quote: "Can I please get an extension prof?",
  quote_type: QuoteType.find_or_create_by!(description: "no shot"),
  insanity: 420,
  star: true
)

Quote.create!(
  homie_id: Homie.find_or_create_by!(name: "Jesse").id,
  quote: "Bro where's my lunchbox",
  quote_type: QuoteType.find_or_create_by!(description: "no shot"),
  insanity: 21,
  star: true
)

Quote.create!(
  homie_id: Homie.find_or_create_by!(name: "Jesse").id,
  quote: "That's Valid",
  quote_type: QuoteType.find_or_create_by!(description: "random"),
  insanity: 0,
  star: false
)

