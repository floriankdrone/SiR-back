# frozen_string_literal: true

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

elon_credentials = Authentication.create!({ email: 'elon.musk@x.com', password: 'sayitritcher' })
jeff_credentials = Authentication.create!({ email: 'jeff.besos@amazon.com', password: 'sayitritcher' })
elon_musk_profile = elon_credentials.create_profile!({ username: 'elon.musk' })
jeff_besos_profile = jeff_credentials.create_profile!({ username: 'jeffBesos' })
elon_musk_profile.posts.create!({ text: 'SpaceX is da best!' })
jeff_besos_profile.posts.create!({ text: 'Blue Origin will conquer all!' })
