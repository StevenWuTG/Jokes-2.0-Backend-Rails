class User < ApplicationRecord
    has_many :jokes
    has_many :gigs
end
