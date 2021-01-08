class Backer

    attr_reader :name

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def back_project(project)
        backed_project = ProjectBacker.new(project, self)
        backed_project
    end

    def backed_projects
        project_list = []
        my_projects = ProjectBacker.all.select{|backed_project| backed_project.backer == self}
        my_projects.each{|single_project| project_list << single_project.project}
        project_list
    end

        

end