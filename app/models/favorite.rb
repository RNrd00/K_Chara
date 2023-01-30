class Favorite < ApplicationRecord
    belongs_to :customer
    belongs_to :chara
    validates_uniqueness_of :chara_id, scope: :customer_id
end