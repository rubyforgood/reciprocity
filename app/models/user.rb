class User < ApplicationRecord
  # Include default devise modules. Others available are:
  #  :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable, :confirmable, :lockable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :participants

  validates :email, presence: true, uniqueness: true

  def participant
    participants.first
  end
end
