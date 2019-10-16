class DogsController < ApplicationController
  def index
    @dogs = Dog.all
    @sorted_dogs = @dogs.sort_by{|dog| dog.owners.count}.reverse
  end

  def show
    @dog = Dog.find(params[:id])
    @owners = @dog.owners
  end
end
