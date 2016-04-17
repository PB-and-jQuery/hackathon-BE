class VotesController < ApplicationController
  before_action :authenticate!, execpt: [:index]

  def create
    @vote = Vote.new(candidate_id: params[:candidate_id],
                     # user_id: current_user.id,
                     vote: params[:vote])
    if @vote.save
      render json: { message: "Thanks for voting" },
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
