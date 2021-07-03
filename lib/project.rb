class Project

    attr_reader :title

    def initialize(title)
        @title = title
    end

    def add_backer(backer)
        ProjectBacker.new(self, backer)
    end

    def backers
        ProjectBacker.all.filter do |projectbacker|
            projectbacker.project == self
        end.map do |backers|
            backers.backer
        end
    end







end