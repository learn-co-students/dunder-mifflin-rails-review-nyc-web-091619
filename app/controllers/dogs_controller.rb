class DogsController < ApplicationController

    def index
        @dogs = Dog.all
    end

    def show
        @dog = Dog.find(params[:id])
    end

    def most_employees
        @dogs = Dog.all.sort do |dog|
                    dog.employees.count
                end
        render action: :index
    end

end
