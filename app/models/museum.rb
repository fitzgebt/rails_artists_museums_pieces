class Museum < ApplicationRecord
    has_many :pieces
	has_many :artists, through: :pieces
    scope :open_status, -> { where(open_status: true) }
end
