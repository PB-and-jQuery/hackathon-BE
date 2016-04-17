json.candidates @candidates do |candidate|
  json.id candidate.id 
  json.name candidate.name
  json.party candidate.party
  json.votes candidate.votes.sum(:vote)


end
