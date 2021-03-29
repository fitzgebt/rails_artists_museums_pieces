class Museum < ApplicationRecord
    have_many :pieces
	have_many :artists, through: :pieces
end
