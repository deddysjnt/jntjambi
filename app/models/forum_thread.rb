class ForumThread < ApplicationRecord
	# Realasi Antar Tabel Dalam Database
	belongs_to :user
	has_many :forum_posts
end
