require 'faker'

puts "clearing seeds"

Joke.destroy_all
Gig.destroy_all
Review.destroy_all
Club.destroy_all
User.destroy_all

puts "faking some users"

10.times do
    User.create!(
        name:Faker::FunnyName.two_word_name ,
        email:Faker::Internet.email,
        bio:Faker::Quote.famous_last_words 
    )
end

puts "faking some clurbs"

10.times do 
    Club.create!(
        name:Faker::Company.name,
        required_likes:rand(1..50)
    )
end

puts "faking some funnies"

20.times do
    Joke.create!(
        # user_id: User.all.sample.id,
        user_id: rand(1..10),
        content:Faker::TvShows::FamilyGuy.quote
    )
end

puts "faking some gigs"

10.times do 
    Gig.create!(
        club_id: Club.all.sample.id,
        user_id: User.all.sample.id,
        
    )
end

puts "faking some reviews"

10.times do
    Review.create!(
        club_id: Club.all.sample.id,
        rating: rand(1..5),
        content:Faker::Restaurant.review

    )
end