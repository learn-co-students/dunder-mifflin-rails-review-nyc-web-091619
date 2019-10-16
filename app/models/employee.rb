class Employee < ApplicationRecord
    belongs_to :dog
    validates :title, presence: true, uniqueness: true
end
