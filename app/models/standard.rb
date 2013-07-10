class Standard < ActiveRecord::Base
  attr_accessible :name, :school_id
  validates :name, :presence=>true
  validates :school_id, :presence=>true
  validates_exclusion_of :school_id, in: 0..0, message: "id is invalid "
end
