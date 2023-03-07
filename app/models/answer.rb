class Answer < ApplicationRecord
  belongs_to :user_games
  belongs_to :song
end
