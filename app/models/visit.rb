class Visit < ApplicationRecord
  belongs_to :user
  belongs_to :url

  def increment_visit_count

  	update recurring_visits: self.recurring_visits+=1 
  end
end
