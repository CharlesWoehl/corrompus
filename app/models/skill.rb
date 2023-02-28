class Skill < ApplicationRecord
  has_many :joinskills
  has_many :personnalities, through: :joinskills
end
