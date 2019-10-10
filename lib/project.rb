require 'pry'
class Project
    attr_accessor :title , :backer
    def initialize (title)
        @title=title
    end
    def add_backer(backer)
        ProjectBacker.new(self,backer)
    end

    def backers
        # ar=[]
        # ProjectBacker.all.each do |project_backer| 
        #     if project_backer.project == self 
        #         ar.push(project_backer.backer)
        #     end
            
        # end
        # ar
        ProjectBacker.all.map do |project_backer|
            if project_backer.project == self
                project_backer.backer
            end
        end.compact
    end
end