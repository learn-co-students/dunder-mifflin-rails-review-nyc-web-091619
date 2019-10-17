class DogsController < ApplicationController

    def index
        @dogs = Dog.all
    end

    def new
        @dog = Dog.new
        @employees = Employee.all 
    end

    def show
        @dog = Dog.find(params[:id])
    end

    def create
        @dog = Dog.new(dog_params)
        @employees = Employee.all
        if @dog.save
            redirect_to dog_path(@dog)
        else
            # redirect_to new_dog_path
            render :new
        end
    end

    def edit
        @dog = Dog.find(params[:id])
    end

    def update
        @dog = Dog.find(params[:id])
        @dog.update(dog_params)

        if @dog.save
            redirect_to dog_path(@dog)
        else
            # redirect_to new_dog_path
            render :new
        end
    end

    def destroy
        @dog = Dog.find(params[:id])
        @dog.destroy

        # redirect_to new_dog_path
        render :new
    end

    private

    def dog_params
        params.require(:dog).permit(:name, :breed, :age)
    end
end
