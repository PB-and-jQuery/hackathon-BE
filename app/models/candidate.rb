class Candidate < ActiveRecord::Base
  has_many :votes
  has_many :voters, through: :votes, source: :user
<<<<<<< HEAD

=======
>>>>>>> 371b79ef2f72d29dc38fb6194f8de290626e041c
end
