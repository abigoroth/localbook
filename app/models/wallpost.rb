class Wallpost < ApplicationRecord
belongs_to :user
has_many :comments
end
