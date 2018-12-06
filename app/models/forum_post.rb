class ForumPost < ApplicationRecord
	# Realasi Antar Tabel Dalam Database
	belongs_to :user
	belongs_to :forum_thread
end
