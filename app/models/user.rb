class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

         validates :username, :uniqueness => true
         validates :username, :presence => true
         validates :email, :uniqueness => true
         validates :email, :presence => true
end
