class Note < ActiveRecord::Base
  belongs_to :view
  belongs_to :category
  
end
