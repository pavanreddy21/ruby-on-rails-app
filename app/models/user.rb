class User < ApplicationRecord
    has_many :employments

    validates :name, presence: true, length: { maximum: 25 }
    validates :address, presence: true
    validates :email, presence: true
    validates :phone, presence: true
end
