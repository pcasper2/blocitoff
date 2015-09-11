require 'faker'

5.times do 
  user = User.new(
    name:      Faker::Name.name,
    email:     Faker::Internet.email,
    password:  'hellowworld'
    )
  user.skip_confirmation!
  user.save!
end
users = User.all

50.times do 
  item = Item.create!(
    user:       users.sample,
    name:       Faker::Lorem.sentence,
    complete:   false
    )
  item.update_attributes!(created_at: rand(10.minutes .. 2.weeks).ago)
end
items = Item.all

puts "Seed finished"
puts "#{User.count} users created"
puts "#{Item.count} items non-complete items created"