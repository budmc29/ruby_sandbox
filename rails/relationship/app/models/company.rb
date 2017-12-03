class Company < ApplicationRecord
  has_many :contact

  validates :name, presence: true
end
