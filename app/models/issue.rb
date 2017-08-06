class Issue < ApplicationRecord
  scope :approved, -> { where(approved: true) }
end
