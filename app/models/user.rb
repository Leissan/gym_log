class User < ApplicationRecord
    validates :username, uniqueness: true
    has_many :logs
    has_many :exercises, through: :logs
end
