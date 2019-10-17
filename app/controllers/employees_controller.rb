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
        @employee = Employee.new(employee_params)

        if @employee.save
            redirect_to employee_path(@employee)
        else
            # redirect_to (fallback_location: new_employee_path)
            render :new
        end
    end

    def edit
        @employee = Employee.find(params[:id])
    end

    def update
        @employee = Employee.find(params[:id])
        @employee.update(employee_params)

        if @employee.save
            redirect_to employee_path(@employee)
        else
            # redirect_back (fallback_location: new_employee_path)
            render :new
        end
    end

    def destroy
        @employee = Employee.find(params[:id])
        @employee.destroy
        redirect_to new_employee_path
    end

    private

    def employee_params
        params.require(:employee).permit(:first_name, :last_name, :alias, :title, :office, :dog_id, :img_url)
    end
end
