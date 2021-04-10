class Club < ApplicationRecord
    has_many :reviews
    has_many :gigs
    has_many :users, through: :gigs
end
