class Tvshow < ApplicationRecord
  has_many :Playlists
  has_many :users, through: :Playlist
end
