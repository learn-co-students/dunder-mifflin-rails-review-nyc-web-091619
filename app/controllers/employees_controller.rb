class EmployeesController < ApplicationController

    def index
        @employees = Employee.all
    end

    def new
        @employee = Employee.new
        @dogs = Dog.all
    end

    def create
        @employee = Employee.new(employee_params)

        if @employee.save
            redirect_to employee_path(@employee)
        else 
            render :new
        end
    end

    def show
        @employee = Employee.find(params[:id])
        @name = @employee.name
        @title = @employee.title
        @alias = @employee.alias
        @office = @employee.office
        @dog = @employee.dog
        @dog_name = @dog.name
        @img_url = @employee.img_url

    end

    def edit
        @employee = Employee.find(params[:id])
        @dogs = Dog.all
        
    end

    def update
        @employee = Employee.find(params[:id]) 
        @employee.update(employee_params)

        if @employee.valid?
            redirect_to employee_path(@employee)
        else 
            render :edit
        end
    end

    def destroy
        Employee.destroy(params[:id])
    end

    private

    def employee_params
        params.require(:employee).permit(:first_name, :last_name, :alias, :title, :office, :img_url, :dog_id)
    end
end
