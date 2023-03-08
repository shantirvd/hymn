class AnswersController < ApplicationController
  def index
    @answers = policy_scope(Answer)
    @answers = Answer.all
  end

end
