class Artist < ApplicationRecord
    have_many :pieces
	have_many :museums, through: :pieces


end
