# frozen_string_literal: true

# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

Track.create!(
  order_number:      1,
  title:             'I Wanna Dance with Somebody (Who Loves Me)',
  artist:            'Whitney Houston',
  length_in_seconds: (5 * 60) + 14
)

Track.create!(
  order_number:      2,
  title:             "Sweet Child O' Mine",
  artist:            "Guns N' Roses",
  length_in_seconds: (5 * 60) + 2
)

Track.create!(
  order_number:      3,
  title:             'Total Eclipse of the Heart',
  artist:            'Bonnie Tyler',
  length_in_seconds: (4 * 60) + 27
)

Track.create!(
  order_number:      4,
  title:             'When Doves Cry',
  artist:            'Prince',
  length_in_seconds: (5 * 60) + 52
)

Track.create!(
  order_number:      5,
  title:             'Take On Me',
  artist:            'a-ha',
  length_in_seconds: (3 * 60) + 49
)
