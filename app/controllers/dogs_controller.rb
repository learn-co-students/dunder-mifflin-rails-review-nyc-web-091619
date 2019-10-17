class DogsController < ApplicationController
    def index
        @dogs = Dog.all
    end

    def new
        @dog = Dog.new
        @employees = Employee.all 
    end

    def create
        @dog = Dog.create(dog_params)

        if dog.save
            redirect_to dog_path(dog)
        else
            redirect_to new_dog_path
        end
    end

    def show
        @dog Dog.find(params[:id])
    end

    def edit
        @dog = Dog.find(params[:id])
    end

    def update
        @dog = Dog.find(params[:id])
        @dog.update(dog_params)
        redirect to dog_path(dog)
    end    

    def destroy
        @dog = Dog.find(params[:id])
        @dog.destroy
        redirect_to new_dog_path
    end

    private
    
    def dog_params
end
