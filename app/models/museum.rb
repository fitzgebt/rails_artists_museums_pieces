class Museum < ApplicationRecord
    has_many :pieces
	has_many :artists, through: :pieces

end
