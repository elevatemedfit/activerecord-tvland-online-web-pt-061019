class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows, through: :characters

  def full_name
    self.artists.collect {|artist| artist.first_name}
  end
end
