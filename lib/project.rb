#require_relative 'backer.rb'
#require_relative 'project_backer.rb'

class Project
    attr_accessor :title
    @@all = []

    def initialize(title)
        @title = title
        @@all << self
    end 

    def add_backer(backer)
        ProjectBacker.new(self, backer)
    end

    def self.all
        @@all
    end

    def backers
        ProjectBacker.all.select do |projectBack|
            projectBack.project == self
        end.map do |filteredProjectBack|
            filteredProjectBack.backer
        end
    end
end