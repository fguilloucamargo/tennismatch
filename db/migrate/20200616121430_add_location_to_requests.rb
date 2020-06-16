class AddLocationToRequests < ActiveRecord::Migration[6.0]
  def change
    add_column :requests, :location, :string
  end
end
