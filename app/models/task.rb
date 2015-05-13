class Task < ActiveRecord::Base
	belongs_to :user
	validates_presence_of :title,:description,:duration

	validate :end_date_is_after_start_date
	
	private
	def end_date_is_after_start_date
	  return if enddate.blank? || initialdate.blank?

	  if enddate < initialdate
	    errors.add(:enddate, "cannot be before the start date") 
	  end 
	end
end
