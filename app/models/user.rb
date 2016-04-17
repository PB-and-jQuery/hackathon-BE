class User < ActiveRecord::Base
	has_secure_password
	validates_presence_of :password, :email
  validates :voter_id, length: { is: 6 }
	validates :password, length: { minimum: 8 }
  validates :email, presence: true, uniqueness: true,
    format: {
      with: /.+\@.+\..+/,
      message: "must have an @ symbol and period"
    }
  validates :auth_token, presence: true
  
  def ensure_auth_token
    unless self.auth_token
      self.auth_token = User.generate_token
    end
  end

  def self.generate_token
    token = SecureRandom.hex
    while User.exists?(auth_token: token)
      token = SecureRandom.hex
    end
    token
  end

  belongs_to :vote
    # has_many :voted_posts, through: :votes, source: :post
    # has_many :voted_comments, through: :votes, source: :comment
end
