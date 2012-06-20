class Sample < ActiveRecord::Base
  
  belongs_to :user
  
  validates_presence_of :weight
  validates_presence_of :sampled_at, :presence => true

  def utc_date
    time = Time.utc(self.sampled_at.year, self.sampled_at.month, self.sampled_at.day).to_i * 1000
    logger.debug("TIME UTC : #{time}")
    time
  end
  
end
