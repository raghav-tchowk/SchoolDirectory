class AlertType1 < ActiveRecord::Base
  attr_accessible :detail, :name

  validates :name, :presence=>true
end
