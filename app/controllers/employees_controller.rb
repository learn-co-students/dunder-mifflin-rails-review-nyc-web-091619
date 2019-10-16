class EmployeesController < ApplicationController
    
    def index
        @employees = Employee.all
    end

    def new
        @employee = Employee.new
        @dogs = Dog.all
    end

    def show
        @employee = Employee.find(params[:id])    
    end

    def create
        @employee = Employee.create(employee_params)
        if @employee.save
            redirect_to employee_path(@employee)
        else
            redirect_to new_employee_path
        end
    end

    def edit
        @employee = Employee.find(params[:id])   
    end

    def update
        @employee = Employee.find(params[:id])   
        @employee.update(employee_params)
        redirect_to employee_path(@employee)
    end

    def destroy
        @employee = Employee.find(params[:id])
        
    end

    private
    
    def employee_params
        params.require(:employee).permit(:first_name, :last_name, :alias, :title, :office, :img_url, :dog_id)
    end

end