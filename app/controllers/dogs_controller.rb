class DogsController < ApplicationController
    def new
        @dog = Dog.new
        @employees = Employee.all
    end

    def create
        @dog = Dog.new(dog_params)
        if @dog.save
            redirect_to @dog
        else 
            render :new
        end
    end

    def index 
        @dogs = Dog.all
    end

    def show
        @dog = Dog.find(params[:id])
        @owners = @dog.owners
    end

    def edit 
        @dog = Dog.find(params[:id])

    end

    def update
        @dog = Dog.find(params[:id])
        @dog.update(dog_params)
        redirect_to dog_path(@dog)
    end

    def destroy
        @dog = Dog.find(params[:id])
    end

    private

    def dog_params
        params.require(:dog).permit(:name, :age, :breed)
    end

    

end
