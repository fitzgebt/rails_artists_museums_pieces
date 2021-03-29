class Piece < ApplicationRecord
    belong_to :museum
	belong_to :artist
end
