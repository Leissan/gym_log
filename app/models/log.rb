class Log < ApplicationRecord
    validates :date, presence: true
    validates :body, presence: true

    belongs_to :user 
    belongs_to :exercise
    
end
