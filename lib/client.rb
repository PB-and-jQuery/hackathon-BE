require "httparty"
require "pry"
require "json"

class Client
  include "HTTparty"

  def vote
    Client.post("/candidates/#{candidate_id}/votes")

  end


end
