require 'pry'

require_relative ('project')
require_relative ('project_backer')
require_relative ('backer')

class Project

    attr_accessor :title

    def initialize (title)
        @title = title
    end 
    
    def add_backer(backer)
        @project = ProjectBacker.new(self, backer)
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
