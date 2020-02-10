class Test < ApplicationRecord
  validates :answer, presence: true
  validates :name, presence: true
end
