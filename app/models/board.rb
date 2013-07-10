class Board < ActiveRecord::Base
  attr_accessible :full_name, :name
  validates :name, :presence=>true
end
