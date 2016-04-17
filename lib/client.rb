require "httparty"
require "pry"
require "json"

class Client
  include HTTParty
  base_uri "https://young-gorge-64909.herokuapp.com"

  def vote(auth_token)
  	# user = User.all
  	candidate_id = rand(16..18)
    Client.post("/candidates/#{candidate_id}/votes", query: {
   	# user_id: rand(1..515),
    	vote: 1
    	}, headers: { "Auth-Token": auth_token})
  end

end

client = Client.new

user_tokens = ["f06c50e2ccc6019ab1d8865236d8a9c8",
	"993565952e785294ba376786b8d70d65",
	"64963189a34f5b46cda9a610786b2308",
	"53f5bc18c4def111942eac562ad58f67",
	"ce0725c4590d6fe15b6273db7ebb0567",
	"57f9d489dd2fd7f41b52fdb0cd15d4f3", 
	"706bf75f9e4d72f1f6322d2762f1ffb3",
	"161531ec23e88d20402445626ed9067c"]

user_tokens.each do |token|
	client.vote(token)
	sleep rand(0.1..1)
end
