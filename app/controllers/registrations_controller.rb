class RegistrationsController < ApplicationController
  def create
    @user = User.new(user_params)
    @user.ensure_auth_token
    if @user.save
      render json: { user: @user.as_json(only: [:first_name, :last_name, :email, :auth_token ]) },
             status: :created
    else
      render json: { errors: @user.errors.full_messages },
             status: :unprocessable_entity
    end
  end

  def user_params
    params.permit(:email, :password, :first_name, :last_name, :voter_id)
  end
end