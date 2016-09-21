class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :wallpost
  has_one :comment
  has_many :conversations, :foreign_key => :sender_id
  has_many :user_friends
  has_many :friends, :through => :user_friends
end

