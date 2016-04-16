class CandidatesController < ApplicationController
  def create
    @candidate = Candidate.new(cand_params)

    if @candidate.save
      render json: { candidate: @candidate.as_json(only: [:name, :party]) },
             status: :created
    else
      render json: { errors: @candidate.errors.full_messages },
             status: :unprocessable_entity
    end
  end

  def cand_params
    params.permit(:name, :party)
  end
  def index
    @candidates = Candidate.all
    render "index.json.jbuilder", status: :ok
  end
end
