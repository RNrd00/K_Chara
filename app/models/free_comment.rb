class FreeComment < ApplicationRecord
    belongs_to :customer
    belongs_to :chara
    
    validates :comment, presence: true
end
