class VotesController < ApplicationController
  before_action :authenticate!, execpt: [:index]

  def create
    @vote = current_user.votes.new(candidate_id: params[:candidate_id],
                                  vote: params[:vote])
    if @vote.save
      flash[:notice] = "Thanks for doing your civic duty"
    else
      flash[:notice] = "Errors making vote"
  end

  def index
    @votes = Votes.all
  end
end
