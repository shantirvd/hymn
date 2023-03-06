class UsersGame < ApplicationRecord
  belongs_to :user
  belongs_to :game
  has_many :answers, dependent: :destroy
end
