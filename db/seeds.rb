# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


Fabricator(:user) do
  first_name { Faker::Name.first_name }
  last_name { Faker::Name.last_name }
  email { Faker::Email.email }
  voter_id { Faker::Number.number(6) }
  auth_token { Faker::Crypto.sha1 }
  password { "testtest" }
  password_confirmation { |attrs| attrs[:password] }
end

5.times { Fabricate(:user) }