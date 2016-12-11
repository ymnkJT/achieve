10.times do |n|
#   email = Faker::Internet.email
#   password = "password"
#   User.create!(email: email,
#                 password: password,
#                 password_confirmation: password,
#                 name: "user #{n}"
#                 )

  Blog.create(title: "title #{n+10}",
               content: "content #{n+10}",
               user_id: 203,
               )
end