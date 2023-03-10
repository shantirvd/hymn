class Answer < ApplicationRecord
  belongs_to :users_game
  belongs_to :song
  validates :result_status, presence: true, inclusion: {
    in: %w[refused pending accepted]
  }
end
