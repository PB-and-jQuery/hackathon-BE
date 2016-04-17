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
<<<<<<< HEAD

=======
>>>>>>> 371b79ef2f72d29dc38fb6194f8de290626e041c
    render "index.json.jbuilder", status: :ok
  end
end
