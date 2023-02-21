class Exercise < ApplicationRecord
    validates :name, presence: true
    validates :description, presence: true
    validates :repetitions, presence: true

end
