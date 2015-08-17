class Feedback < ActiveRecord::Base
  belongs_to :video
  belongs_to :teacher
  has_many :metafeedbacks
end
