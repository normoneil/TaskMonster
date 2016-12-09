class Note < ActiveRecord::Base

    validates :title, :presence => true
    validates :user_id, :presence => true
    validates :category_id, :presence => true
    validates :view_id, :presence => true

    has_many :tags
    has_many :tagnames, :through => :tags

    belongs_to :category
    belongs_to :view
    belongs_to :user

end
