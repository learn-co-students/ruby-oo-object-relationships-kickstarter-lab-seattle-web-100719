require_relative 'backer'
require_relative 'project_backer'
require_relative 'project'

class ProjectBacker
	@@all = []
	attr_accessor :project, :backer

	def initialize(project, backer)
		@project = project
		@backer = backer
		@@all << self
	end

	def self.all
		@@all
	end

end