class Contact < ApplicationRecord
  belongs_to :company

  validates :family_name, presence: true
  validates :given_names, presence: true
end
