require_relative 'backer'
require_relative 'project_backer'
require_relative 'project'

class Project
	attr_accessor :title

	def initialize(title)
		@title = title
	end

	def add_backer(backer)
		@backer = ProjectBacker.new(self, backer)
	end

	def backers
		new_array = []
		ProjectBacker.all.each do |array|
			if array.project == self
				new_array << array.backer
			end
		end
		new_array
	end
end