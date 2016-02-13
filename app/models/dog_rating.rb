class DogRating < ActiveRecord::Base
  belongs_to :dog 
  belongs_to :walkr

end
