class Artist < ApplicationRecord
    has_many :pieces
	has_many :museums, through: :pieces
    validates :username, presence: true, uniqueness: true
    validates :name, presence: true
    validates :hometown, presence: true
    has_secure_password
    scope :non_github_login, -> { where(github_login: false) }
end
