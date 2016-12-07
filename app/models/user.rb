class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :reviews, dependent: :destroy
  #dependent: :destroy means that if user is deleted, all reviews written by this user are going to be delete too

  validates :first_name, :last_name, presence: true
end
