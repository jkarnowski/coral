class Video < ActiveRecord::Base
  belongs_to :teacher
  has_many :feedbacks
end
