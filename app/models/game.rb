class Game < ApplicationRecord
  belongs_to :user
  has_many :users_games, dependent: :destroy
  has_many :users, through: :users_games
  has_many :songs, dependent: :destroy
  # validates :status, presence: true, inclusion: {
  #   in: %w[unstarted ongoing finished]
  # }
end
