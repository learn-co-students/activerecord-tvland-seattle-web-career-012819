require "pry"
class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows, through: :characters
  def full_name
    # Interpolate this actor's fullname and return it.
    "#{self.first_name} #{self.last_name}"
  end
  def list_roles
    # Map all of the characters this actor has played and their related shows.
    self.characters.map do |c|
      char_name = c.name
      show_name = self.shows.map { |s|
        if s.id == c.show_id
          s.name
        end
      }.first
      # NOTE:
      #   the above line satisfies this test, however, it may break
      #   when a character crosses over into multiple shows.
      "#{char_name} - #{show_name}"
    end
  end
end