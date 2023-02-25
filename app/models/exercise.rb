class Exercise < ApplicationRecord
    validates :name, presence: true
    validates :description, presence: true
    validates :repetitions, presence: true

    has_many :logs
    has_many :users, through: :logs

end
