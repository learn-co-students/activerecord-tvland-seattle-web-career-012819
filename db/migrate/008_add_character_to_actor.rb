class AddCharacterToActor < ActiveRecord::Migration[5.1]

  def change
    add_column :actors, :character_name, :string
  end

end
