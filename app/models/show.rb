class Show < ActiveRecord::Base
  belongs_to :actor
  belongs_to :character
  belongs_to :network
end
