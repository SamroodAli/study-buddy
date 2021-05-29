# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# Create a main sample user.
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
