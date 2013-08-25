class Location < ActiveRecord::Base
  belongs_to :tweet
  attr_accessible :name, :tweet_id
end
