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

Video.create({
    embedded_url: "https://www.youtube.com/watch?v=-hiGJwMNNsM",
    title: "Factor by Grouping",
    youtube_id: "hiGJwMNNsM",
    teacher_id: 1
  })

Video.create({
    embedded_url: "https://www.youtube.com/watch?v=1T-rsltsWnM",
    title: "Solving Quadratic Equations",
    youtube_id: "1T-rsltsWnM",
    teacher_id: 1
  })

Video.create({
    embedded_url: "https://www.youtube.com/watch?v=59j0ALU3N7k",
    title: "Solving Logarithms",
    youtube_id: "59j0ALU3N7k",
    teacher_id: 2
  })

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

10.times do
   Metafeedback.create({
    actionable: [true, false].sample,
    specific: [true, false].sample,
    kind: [true, false].sample,
    feedback_id: (1..10).to_a.sample
  })
end
