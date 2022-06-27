class Membership < ApplicationRecord
    belongs_to :client
    belongs_to :gym

    validates :gym_id, :client_id, :charge, :presence => true, :numericality =>  { :only_integer => true}
end
