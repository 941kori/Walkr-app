class WalkrRating < ActiveRecord::Base
  belongs_to :walkr
  belongs_to :dog
end
