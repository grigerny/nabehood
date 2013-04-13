class Nabe < ActiveRecord::Base
  acts_as_taggable
  belongs_to :city
  attr_accessible :name, :tag_list, :tags
end
