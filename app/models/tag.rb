class Tag < ApplicationRecord
	has_many :project_tags, inverse_of: :tag
	has_many :projects, through: :project_tags
end
