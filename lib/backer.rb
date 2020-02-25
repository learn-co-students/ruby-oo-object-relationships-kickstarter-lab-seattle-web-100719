require 'pry'
class Backer
    attr_accessor :name, :project
    
    def initialize(name)
        @name =name
    end

    def back_project(project)
        ProjectBacker.new(project,self)
    end

    def backed_projects
        ar=[]
        ProjectBacker.all.each do |project_backer| 
            if project_backer.backer == self 
                ar.push(project_backer.project)
            end
            
        end
        ar
    end


end