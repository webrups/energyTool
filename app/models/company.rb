class Company < ApplicationRecord

  belongs_to :admin
  has_many :rooms

end
