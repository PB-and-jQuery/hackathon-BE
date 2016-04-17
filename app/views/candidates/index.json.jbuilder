json.candidates @candidates do |candidate|
  json.name candidate.name
  json.party candidate.party
  #json.votes candidates.votes.sum(:vote)


end
