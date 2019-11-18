class Tag < ApplicationRecord
    validates :slug, uniqueness: true, case_sensitive: true
    validates :value, uniqueness: true, case_sensitive: true
    has_and_belongs_to_many :color
end