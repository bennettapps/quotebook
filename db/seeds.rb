# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

["hollup", "let him cook", "caught in 4k", "random", "outta pocket"].each do |quote_type_name|
  QuoteType.find_or_create_by!(description: quote_type_name)
end

["prof stroup", "jesse", "roy", "zach", "peter", "that one guy from syria"].each do |homie_name|
  Homie.find_or_create_by!(name: homie_name)
end
