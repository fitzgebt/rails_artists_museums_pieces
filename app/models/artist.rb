class Artist < ApplicationRecord
    has_many :pieces
	has_many :museums, through: :pieces


end
