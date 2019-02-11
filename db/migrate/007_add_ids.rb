class AddIds < ActiveRecord::Migration[4.2]

  def change
    add_column :shows, :actor_id, :integer
    add_column :actors, :character_id, :integer
    add_column :characters, :actor_id, :integer
    add_column :networks, :show_id, :integer
  end

end
