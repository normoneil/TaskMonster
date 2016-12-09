class Tagname < ActiveRecord::Base

    validates :name, :presence => true
    validates :name, :uniqueness => { :case_sensitive => false }

    has_many :tags
    has_many :notes, :through => :tags

end
