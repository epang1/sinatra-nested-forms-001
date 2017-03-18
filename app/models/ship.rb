class Ship

  attr_accessor :name, :type, :booty

  @@all_ships = []

  def initialize(name, type, booty)
    @name = name
    @type = type
    @booty = booty

    @@all_ships << self
  end

  def self.all
    @@all_ships
  end

  def self.clear
    @@all_ships = []
  end

end