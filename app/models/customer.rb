class Customer < ActiveRecord::Base
  has_many :invoices
    def address
      "#{street} #{city}, #{state} #{zip}"
    end
end
