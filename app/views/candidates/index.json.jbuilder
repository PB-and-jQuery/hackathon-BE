json.candidates @candidates do |candidate|
  json.name candidate.name
  json.party candidate.party
<<<<<<< HEAD
  json.votes candidate.votes.sum(:vote)
=======
  #json.votes candidates.votes.sum(:vote) 
>>>>>>> 0d4f81885d50c0ef7ba04f1d39de3187fb643da8

end
