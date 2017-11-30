class Room < ApplicationRecord

  belongs_to :company
  has_many :lights
end
