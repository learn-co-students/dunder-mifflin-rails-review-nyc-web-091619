class DogsController < ApplicationController

    def index
        @dogs = Dog.all
    end

    def new
        @dog = Dog.new
    end

    def create
        @dog = Dog.new(dog_params)

        if @dog.save
            redirect_to dog_path(@dog)
        else 
            render :new
        end
    end

    def show
        @dog = Dog.find(params[:id])
        @name = @dog.name
        @age = @dog.age
        @breed = @dog.breed
        @employees = @dog.employees

    end

    def sort
        @dogs = Dog.all.sort_by {|dog| dog.employees.count}
        render :index
    end

    def edit
        @dog = Dog.find(params[:id])
        
    end

    def update
        @dog = Dog.find(params[:id]) 
        @dog.update(dog_params)

        if @dog.valid?
            redirect_to dog_path(@dog)
        else 
            render :edit
        end
    end

    def destroy
        Dog.destroy(params[:id])
    end

    private

    def dog_params
        params.require(:dog).permit(:name, :age, :breed)
    end
end
