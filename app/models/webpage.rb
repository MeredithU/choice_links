class Webpage < ActiveRecord::Base
  attr_accessible :link, :name

  validates :name, :presence => true
end
