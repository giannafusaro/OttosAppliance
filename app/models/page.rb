class Page < ActiveRecord::Base

  serialize :data, JSON
  
end
