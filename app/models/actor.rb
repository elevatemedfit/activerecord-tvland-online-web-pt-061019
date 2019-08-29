class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows, through: :characters

  def full_name
    name = "#{self.first_name} #{self.last_name}"
  end

  def associated_characters
    all_shows = []
    all_shows = self.shows.collect {|show| show.name}
  end
end
