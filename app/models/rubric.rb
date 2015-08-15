class Rubric < ActiveRecord::Base
  has_many :criterions
  belongs_to :video
end
