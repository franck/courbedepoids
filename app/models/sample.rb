class Sample < ActiveRecord::Base
  
  belongs_to :user
  
  validates_presence_of :weight
  validates_presence_of :sampled_at, :presence => true
  
end
