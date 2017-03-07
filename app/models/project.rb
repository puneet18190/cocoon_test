class Project < ApplicationRecord
	has_many :tasks, inverse_of: :project
	has_many :project_tags, inverse_of: :project
  	has_many :tags, :through => :project_tags, :class_name => 'Tag'

	accepts_nested_attributes_for :tasks, :reject_if => :all_blank, :allow_destroy => true
	accepts_nested_attributes_for :tags
	accepts_nested_attributes_for :project_tags, :allow_destroy => true
end
