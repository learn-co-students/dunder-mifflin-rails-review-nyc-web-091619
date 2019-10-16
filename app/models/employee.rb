class Employee < ApplicationRecord
  belongs_to :dog
  validates :alias, :title, uniqueness: {
    scope: %i[office]
  }
end
