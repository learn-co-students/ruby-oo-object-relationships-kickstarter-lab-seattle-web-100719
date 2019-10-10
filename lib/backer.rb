require 'pry'
class Backer
    attr_reader :name
    def initialize(name)
        @name = name
    end

    def back_project(project)
        ProjectBacker.new(project, self)
    end

    def backed_projects
        # ProjectBacker.all.project
        #binding.pry
        backers = ProjectBacker.all.filter do |projectbacker|
            projectbacker.backer == self
        end

        backers.map do |projects|
            projects.project
        end
    end
end