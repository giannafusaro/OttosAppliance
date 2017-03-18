class Invoice < ActiveRecord::Base
  def address
    "#{street} #{city}, #{state} #{zip}"
  end
end
