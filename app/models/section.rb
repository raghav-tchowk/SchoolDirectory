class Section < ActiveRecord::Base
  attr_accessible :name, :standard_id
  validates :name, :presence=>true
  validates :standard_id, :presence=>true
  validates_exclusion_of :standard_id, in: 0..0, message: "id is invalid "
end
