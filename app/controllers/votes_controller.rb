class VotesController < ApplicationController
  before_action :authenticate!, execpt: [:index]

  def create
    @vote = Vote.new(candidate_id: params[:candidate_id],
                                    user_id: params[:user_id],
                                    vote: params[:vote])
    if @vote.save
      flash[:notice] = "Thanks for doing your civic duty"
    else
      flash[:notice] = "Errors making vote"
    end
  end

  def index
    @votes = Votes.all
  end
end
