class VotesController < ApplicationController
  before_action :authenticate!, execpt: [:index]

  def create
    @vote = current_user.votes.new(candidate_id: params[:candidate_id],
                                  vote: params[:vote])
    if @vote.save
      status: :created
    else
      render json: { errors: @user.errors.full_messages },
      status: :unprocessable_entity
    end
  end

  def index
    @votes = Votes.all
  end
end
