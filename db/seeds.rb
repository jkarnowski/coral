# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


10.times do
  Teacher.create({
    name: Faker::Name.name,
    email: Faker::Internet.email,
    bio: Faker::Lorem.paragraph,
    grade_level: ['elementary', 'middleschool', 'highschool'].sample,
    subject: ['math', 'english', 'history', 'science'].sample
  })
end

(1..10).each do |number|
  number = Video.create({
    embedded_url: "https://www.youtube.com/watch?v=lWA2pjMjpBs",
    teacher_id: number
  })
end

(1..10).each do |number|
  number = Feedback.create({
    content: Faker::Lorem.paragraph,
    teacher_id: (1..10).to_a.sample,
    video_id: number
  })
end

(1..10).each { |number| rubrics = Rubric.create({}) }

(1..10).each do |number|

  number = Criterion.create({
    rating: (1..5).to_a.sample,
    enabled: [true, false].sample,
    description: Faker::Lorem.paragraph,
    rubric_id: number
    })
end
