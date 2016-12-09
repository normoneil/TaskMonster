class Tag < ActiveRecord::Base

    validates :note_id, :presence => true
    validates :tagname_id, :presence => true

    belongs_to :note
    belongs_to :tagname

end
