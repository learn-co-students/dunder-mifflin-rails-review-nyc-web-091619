class Dog < ApplicationRecord
    has_many :owners, class_name: 'Employee'
    validates :name, presence: true
end
