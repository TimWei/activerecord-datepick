module Datepicker
	module Model
		extend ActiveSupport::Concern

	    included do
	      class_attribute :datepick_on
	      self.datepick_on = :created_at

	      scope :today, ->{ where("#{datepick_on.to_s} > ? AND #{datepick_on.to_s} < ?",Date.today.midnight, Date.today.end_of_day) }
	      scope :pick_date, -> (date){ where(datepick_on => date.midnight..date.end_of_day) }
	    end

	    def today?
	    	record_time = self.try(datepick_on) 
	    	today = Date.today
	    	raise 'invalid datepick column' unless record_time
	    	record_time > today.midnight && record_time < today.end_of_day
	    end
	end
end