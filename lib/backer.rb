require_relative 'project.rb'
require_relative 'project_backer.rb'


class Backer
    attr_accessor :name
    
    def initialize (name)
        @name = name
    end

    def back_project(project)
        ProjectBacker.new(project, self)
    end

    def backed_projects
        ProjectBacker.all.select do |projectBack|
            projectBack.backer == self
        end.map do |filteredProjectBack|
            filteredProjectBack.project
        end
    end
end