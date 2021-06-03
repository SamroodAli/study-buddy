User.create!( name:  "Samrood",
  email: "example1@study.org",
  password:              "passpass",
  password_confirmation: "passpass",
)
User.create!( name:  "Omar",
  email: "example2@study.org",
  password:              "passpass",
  password_confirmation: "passpass",
)
User.create!( name:  "Deepak",
  email: "example3@study.org",
  password:              "passpass",
  password_confirmation: "passpass",
)

User.create!( name:  "Jean",
  email: "example4@study.org",
  password:              "passpass",
  password_confirmation: "passpass",
)

User.create!( name:  "Leon",
              email: "example5@study.org",
              password:              "passpass",
              password_confirmation: "passpass",
            )

User.create!( name:  "Nasser",
              email: "example6@study.org",
              password:              "passpass",
              password_confirmation: "passpass",
)
            
User.first.collections.create(name:"non collection")

User.first.study_sessions.create!(
  name:"Learning Algorithm",
  collection_id:1
)


99.times do |n|
  User.create!( name:  "{name-#{n}",
              email: "example-#{n}@study.org",
              password:              "passpass",
              password_confirmation: "passpass",
)
end
