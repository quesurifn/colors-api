class Color < ApplicationRecord
    has_and_belongs_to_many :tag
    has_many :like
end
