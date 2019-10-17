class Employee < ApplicationRecord
    belongs_to :dog 
    validates :title, :alias, uniqueness: true
    validates :first_name, :last_name, presence: true 


    def to_full_name
        first_name + " " + last_name 
    end 


end
