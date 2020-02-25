require 'pry'
require_relative 'project_backer'
class Backer
    attr_reader :name

    def initialize(name)
        @name = name
    end

    def back_project(project)
        ProjectBacker.new(project, self)
    end

    def backed_projects
        array = []
        ProjectBacker.all.each do |projectBacker|
            if self == projectBacker.backer 
                array << projectBacker.project 
            end
        end
        array 
    end 

end