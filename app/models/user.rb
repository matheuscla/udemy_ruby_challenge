class User < ApplicationRecord
  has_many :friendships
  has_many :friends, through: :friendships


  validates :family_id, presence: false

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  def self.search(search)
    where("first_name LIKE ? OR last_name LIKE ? OR email LIKE ?", "%#{search}%", "%#{search}%", "%#{search}%")
  end


  validates :first_name, presence: true, length: {minimum: 3, maximum: 50}
  validates :mi, presence: true, length: {maximum: 1}
  validates :last_name,presence: true,length: {minimum: 3, maximum: 50}
  validates :address1, presence: true, length: {minimum: 10, maximum: 300}
  validates :address2,presence: true,length: {minimum: 10, maximum: 300}
  validates :zip, presence: true, length: {maximum: 8}
  validates :city, presence: true, length: {maximum: 30}
  validates :country,presence: true, length: { maximum: 30}


end
