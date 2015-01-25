#flowers.rb

class Flower_power
  def initialize(days)
    @days = days
  end

  def stage
    if @days <= 10
      "Seedling"
    elsif @days > 10 && @days <= 30
      "Sapling"
    elsif @days > 30
      "Bloom"
    end
  end
end

rose = Flower_power.new(20)
p rose.stage