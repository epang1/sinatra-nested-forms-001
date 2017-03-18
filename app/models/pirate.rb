require 'pry'
class Pirate

attr_accessor :name, :weight, :height, :ships

  @@all_pirates = []

  def initialize(name, weight, height, ships)
    @name = name
    @weight = weight
    @height = height
    @ships = ships

    @@all_pirates << self


    ships.each do |ship|
      Ship.new(ship["name"], ship["type"], ship["booty"])
    end
  end

  def self.all
    @@all_pirates
  end

end