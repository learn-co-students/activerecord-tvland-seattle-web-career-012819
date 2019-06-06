class Actor < ActiveRecord::Base
    has_many :characters 

#that returns the first and last name of an actor.
  def full_name
    self.first_name + " " + self.last_name
  end
# that lists all of the characters that actor has.

  def list_roles
    self.characters.map do |c|
    "#{c.name} - #{c.show.name}"
    end
  end


end