class Quote < ApplicationRecord
  validates :name, presence: true
  validates :quote, presence: true
end
