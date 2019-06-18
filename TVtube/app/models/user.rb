class User < ApplicationRecord
  has_many :Playlists
  has_many :Tvshows, through: :Playlist
end
