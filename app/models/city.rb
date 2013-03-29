class City < ActiveRecord::Base
  has_many :nabes
  attr_accessible :name
end
