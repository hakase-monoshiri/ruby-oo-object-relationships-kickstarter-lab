class Project

    attr_reader :title

    @@all = []

    def initialize(title)
        @title = title
        @@all << self
    end

    def add_backer(backer)
        backed_project = ProjectBacker.new(self, backer)
        backed_project
    end

    def backers
        backers_list = []
        my_projects = ProjectBacker.all.select{|backed_project| backed_project.project == self}
        my_projects.each{|single_project| backers_list << single_project.backer}
        backers_list
    end



end
