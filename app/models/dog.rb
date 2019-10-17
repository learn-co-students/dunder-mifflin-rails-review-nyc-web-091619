class Dog < ApplicationRecord
    has_many :employees

def self.sorted
 Dog.all.sort {|a, b| a.employees.count <=> b.employees.count}
end 

end 



