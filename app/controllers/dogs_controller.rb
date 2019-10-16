class DogsController < ApplicationController
    def index
        @dogs = Dog.all
    end

    def sorted
        @dogs = Dog.all.sorted
    end

    def show
        @dog = Dog.find(params[:id])
    end
end
