class Dog < ApplicationRecord
    has_many :employees

    def my_employees
        self.employees
    end
end
