class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows, through: :characters

  def full_name
    self.actors.collect {|actor| actor.first_name}
  end
end
