class Comment < ApplicationRecord
	belongs_to :wallpost
	belongs_to :user
end
