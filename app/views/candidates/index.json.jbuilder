json.candidates @candidates do |candidate|
  json.name candidate.name
  json.party candidate.party
  json.votes candidate.votes.sum(:vote) 
  #json.votes candidates.votes.sum(:vote)
end
