class Comment < ActiveRecord::Base
	belongs_to :t_reddit
	belongs_to :user
end
