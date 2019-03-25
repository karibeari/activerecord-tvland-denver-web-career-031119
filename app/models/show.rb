class Show < ActiveRecord::Base
  has_many :characters
  belongs_to :network
  has_many :actors, through: :characters

  def build_network(call_letters: )
    Network.create(call_letters: call_letters).shows << self
  end
end
