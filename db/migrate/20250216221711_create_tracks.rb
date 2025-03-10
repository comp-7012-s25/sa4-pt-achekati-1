# frozen_string_literal: true

class CreateTracks < ActiveRecord::Migration[7.1]
  def change
    create_table :tracks do |t|
      t.integer :order_number
      t.string :title
      t.string :artist
      t.integer :length_in_seconds

      t.timestamps
    end
  end
end
