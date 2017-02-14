class Company < ActiveRecord::Base
    belongs_to :csort
    has_many :boards
end
