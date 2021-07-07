class Backer
    attr_reader :name

    def initialize (name)
        @name = name
    end

    def back_project(project)
        ProjectBacker.new(project, self)
    end

    def backed_projects
        arr = []
        ProjectBacker.all.each do |project_backer|
            if project_backer.backer == self
                arr << project_backer.project
            end
        end
        arr
    end
end