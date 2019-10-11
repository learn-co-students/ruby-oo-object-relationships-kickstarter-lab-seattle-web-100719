class Project
    attr_accessor :title , :backer
    def initialize (title)
        @title=title
    end
    def add_backer(backer)
        ProjectBacker.new(self,backer)
    end

    def backers
        ar=ProjectBacker.all.select { |project_backer|  project_backer.project == self }
        i=0        
        while ar[i] do 
            arr=ar[i].backer
        end
        arr
    end
end