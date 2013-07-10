class Subject < ActiveRecord::Base
  attr_accessible :mark, :name, :section_id, :teacher
  validates_presence_of :name

  validates :section_id, :presence=>true
  validates_exclusion_of :section_id, in: 0..0, message: "id is invalid "
#  validates_exclusion_of :section_id, in: 0..0, message: "id is invalid ", :allow_nil=>true

  validates :mark, :presence=>true
  validates_exclusion_of :mark, in: 0..0, message: "id is invalid "

  validates :teacher, :presence=>true
  validates_exclusion_of :teacher, in: 0..0, message: "id is invalid "

end
