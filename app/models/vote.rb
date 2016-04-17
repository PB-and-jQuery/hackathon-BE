class Vote < ActiveRecord::Base
  belongs_to :user
  belongs_to :candidate

  # validates :user_id, uniqueness: {
  #             scope: :candidate_id,
  #             message: "You may only vote once."
  #             }
  # validates_presence_of :user_id, :candidate_id, :vote
end
