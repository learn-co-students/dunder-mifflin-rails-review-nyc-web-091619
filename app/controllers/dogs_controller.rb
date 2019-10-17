class DogsController < ApplicationController
    def index 
        @dogs = Dog.all
    end 

    def new 
    end 

    def create 
    end 

    def sorted 
        render :sorted
    end 

    def show
        @dog = Dog.find(params[:id])
        @employees = @dog.employees
    end 

    def edit 
    end

    def update 
    end 

 

end
