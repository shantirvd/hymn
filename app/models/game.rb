class Game < ApplicationRecord
  belongs_to :user
  has_many :user_games, dependent: :destroy
  has_many :users, through: :user_games, as: :players
  has_many :songs
end
