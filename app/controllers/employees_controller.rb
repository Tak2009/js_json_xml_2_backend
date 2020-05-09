class EmployeesController < ApplicationController

    # # to get a reference for the emplyee object. model.all now returns an ActiveRecord::Relation, rather than an array of records.
    # def index
    #     employees = Employee.all
    #     render xml: employees
    # end

    # # covert the object to hash first then access fields
    # def index
    #     employees = Employee.all
    #     render xml: employees.as_json
    # end

    # # only want to see id and name fields:
    # def index
    #     employees = Employee.all
    #     render xml: employees.as_json(only: [:id, :name]
    # end

    # # also indicate the fields we do not want to see
    # def index
    #     employees = Employee.all
    #     render xml: employees.as_json(except: [:created_at, :updated_at])
    # end

    # # don’t want types to be shown we can
    # def index
    #     employees = Employee.all
    #     render xml: employees.as_json(except: [:created_at, :updated_at], skip_types: true)
    # end

    # # want to include the reference field, department
    # def index
    #     employees = Employee.all
    #     render xml: employees.as_json(except: [:created_at, :updated_at], root: true, include: :department )
    # end

    # want to include the reference field with selected fields. from the department table, showing only some columns 
    def index
        employees = Employee.all
        render xml: employees.as_json(except: [:created_at, :updated_at], root: true, include: {department: {except: [:created_at, :updated_at]}})
    end
    
    
    def show
        @employee = Employee.find(params[:id])
         render xml: @employee.as_json
    end
    
    private

	def employee_params
		params.require(:employee).permit!
	end
end
