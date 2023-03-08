class Answer < ApplicationRecord
  belongs_to :users_game
  belongs_to :song
end
