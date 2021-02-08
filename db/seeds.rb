# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


def create_user(email: nil, password_random: false, model_type: "User")
  pwd = password_random ? Faker::Internet.unique.password : "Sympli2021"
  email ||= Faker::Internet.email
  attributes = {
    email: email, password: pwd,
    password_confirmation: pwd, confirmed_at: Time.current,
    created_at: Faker::Date.backward(days: 60)
  }
  user = case model_type
         when "Admin"
           raise "TO IMPLEMENT"
           # Admin.new(attributes)
         when "Company"
           raise "TO IMPLEMENT"
           # Company.new(attributes)
         else
           User.new(attributes)
         end
  user.skip_confirmation!
  user.save!
rescue RuntimeError => e
  puts e.message
end

def bulk_create_user(users = 1)
  users.times { create_user }
end

# Users
bulk_create_user(20)

# users demo
%w[andres@demo.com fer@demo.com].each do |email|
  create_user(email: email)
end

# Articles
100.times do
  Article.create content: Faker::Quotes::Shakespeare.hamlet_quote, user: User.all.sample
end

# Commentaries
100.times do
  Comment.create text: Faker::Quotes::Shakespeare.hamlet_quote, user: User.all.sample, article: Article.all.sample
end
