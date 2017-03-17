class Company < ActiveRecord::Base
    belongs_to :csort
    has_many :boards
    has_many :reservations
    has_many :ntickets
end
