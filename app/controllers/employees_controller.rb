class EmployeesController < ApplicationController
  def index
    @employees = Employee.all
  end

  def show
    @employee = Employee.find(params[:id])

    if @employee.img_url == 'none'
      @employee.img_url = nil
    end
    
   end
   

  def new
    @employee = Employee.new
    @dogs = Dog.all
    @offices = Employee.all.map(&:office).uniq
  end

  def create
    @employee = Employee.new(employee_params)

    if @employee.valid?
      @employee.save
      redirect_to employee_path(@employee)
    else
      render :new
    end
  end

  private

  def employee_params
    params.require(:employee).permit(:first_name, :last_name, :alias, :title, :office, :img_url, :dog_id)
  end
end
