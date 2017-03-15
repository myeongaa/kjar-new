class Company < ActiveRecord::Base
    belongs_to :csort
    has_many :boards
    has_many :reservations
end
