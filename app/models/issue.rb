class Issue < ApplicationRecord
  scope :approved, -> { where(approved: true, active: true) }
  scope :pending, -> { where(approved: false, active: true) }
  scope :closed, -> { where(approved: true, active: false) }
end
