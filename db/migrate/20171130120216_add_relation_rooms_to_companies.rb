class AddRelationRoomsToCompanies < ActiveRecord::Migration[5.1]
  def change
    add_belongs_to :rooms, :company, index: true
  end
end
