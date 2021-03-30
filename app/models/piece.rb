class Piece < ApplicationRecord
    belong_to :museum
	belong_to :artist


    def make_art
        if self.artist.pieces.count == 1
            "Congrats, you are now an artist."
        elsif self.artist.pieces.count <= 1 && self.artist.pieces.count >= 5
            "Another masterpiece created. You are really VanGogh-ing somewhere."
        elsif  self.artist.pieces.count < 5
            "Another masterpiece created. You are the pinacle of artistic abilities."
        end
    end



end
