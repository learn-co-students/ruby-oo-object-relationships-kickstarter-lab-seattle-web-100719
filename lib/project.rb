class Project
    attr_accessor :title

    def initialize(title)
        @title = title
    end

    def add_backer(backer)
        @backer = backer
        ProjectBacker.new(self, backer)
    end

    def backers 
        array = []
        ProjectBacker.all.each do |projectBacker|
            if self == projectBacker.project 
                array << projectBacker.backer 
            end
        end
        array 
    end 

end
