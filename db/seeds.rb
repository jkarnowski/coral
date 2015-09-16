# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


Teacher.create({
  name: "Steve Karr",
  email: "karr@me.com",
  bio: "I'm a calculus teacher for high school and am looking for feedback on my instructional strategies.",
  grade_level: "High School",
  subject: "Calculus"
  })

Teacher.create({
  name: "Caroline Rice",
  email: "rice@fried.com",
  bio: "I'm a high school English teacher for ninth grade. I am looking for strategies to improve my student's reading comprehension of high level literature.",
  grade_level: "High school",
  subject: "English literature"
  })

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
  teacher_id: 1
  })

Video.create({
  embedded_url: "https://www.youtube.com/watch?v=C6y1e-AYf5c",
  title: "World Literature",
  youtube_id: "C6y1e-AYf5c",
  teacher_id: 2
  })

Video.create({
  embedded_url: "https://www.youtube.com/watch?v=D_ap8iKEZXs",
  title: "Reading Strategies",
  youtube_id: "D_ap8iKEZXs",
  teacher_id: 2
  })


# (1..10).each do |number|
#   number = Feedback.create({
#     content: Faker::Lorem.paragraph,
#     teacher_id: (1..10).to_a.sample,
#     video_id: number
#     })
# end

# (1..10).each { |number| rubrics = Rubric.create({}) }

# (1..10).each do |number|

#   number = Criterion.create({
#     rating: (1..5).to_a.sample,
#     enabled: [true, false].sample,
#     description: Faker::Lorem.paragraph,
#     rubric_id: number
#     })
# end

# 10.times do
#  Metafeedback.create({
#   actionable: [true, false].sample,
#   specific: [true, false].sample,
#   kind: [true, false].sample,
#   feedback_id: (1..10).to_a.sample
#   })
# end
