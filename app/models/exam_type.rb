class ExamType < ActiveRecord::Base
  attr_accessible :detail, :name
    validates :name, :presence=>true

end
