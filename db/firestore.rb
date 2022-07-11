require 'google/cloud/firestore'
require 'dotenv'

Dotenv.load('.env')

firestore = Google::Cloud::Firestore.new(
  project_id: ENV['PROJECT_ID'],
  credentials: ENV['CREDENTIALS_PATH']
)

users_ref = firestore.col 'usuarios/'
users_ref.get do |user|
  puts "#{user.document_id} data: #{user.data}."
end
