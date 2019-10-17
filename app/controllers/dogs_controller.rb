class DogsController < ApplicationController
    def index
        @dogs = Dog.all
    end
    
    def show
        @dog = Dog.find(params[:id])
        @employees = @dog.my_employees
    end
end
