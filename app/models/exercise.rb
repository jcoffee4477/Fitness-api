class Exercise < ApplicationRecord
  belongs_to :user
  belongs_to :routine, optional: true
end
