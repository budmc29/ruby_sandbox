class Task < ApplicationRecord
  belongs_to :offer
  belongs_to :project
end
