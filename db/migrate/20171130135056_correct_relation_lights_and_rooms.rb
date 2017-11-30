class CorrectRelationLightsAndRooms < ActiveRecord::Migration[5.1]
  def change
    remove_column :lights, :space_id
    add_belongs_to :lights, :room, index: true
  end
end
