class StickyNote < ActiveRecord::Base
   attr_accessible :title, :subject, :target_date, :remind_me, :priority
   validates_presence_of :title, :subject, :target_date, :priority
end
