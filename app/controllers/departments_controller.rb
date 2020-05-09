class DepartmentsController < ApplicationController

    # def index
    #     departments = Department.all
    #     render json: departments
    # end

    # def index
    #     departments = Department.all
    #     render xml: departments.as_json
    # end

    def index
        departments = Department.all
        render xml: departments.as_json(only: [:name, :hierarchy], skip_types: true)
    end

end
