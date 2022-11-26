class Cheese < ApplicationRecord
  
  def summary
    "#{name} cheese by $#{price}"
  end

end
