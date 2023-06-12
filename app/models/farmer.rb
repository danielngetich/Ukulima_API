class Farmer < ApplicationRecord
    has_many :farmer_crops
    has_many :crops, through: :farmer_crops
    validates :email, presence: true, uniqueness: true, format: { with: URI::MailTo::EMAIL_REGEXP }
    has_secure_password
end
