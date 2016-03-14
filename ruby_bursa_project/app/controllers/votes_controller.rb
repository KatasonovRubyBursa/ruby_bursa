class VotesController < ApplicationController
	before_action :authorize

	 def create
    vote = current_user.votes.create(vote_params)
    redirect_to vote.petition
  end

  private
    def vote_params
      params.permit(:petition_id)
    end
end
