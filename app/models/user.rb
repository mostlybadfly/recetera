class User < ActiveRecord::Base
  has_many :recipes
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
