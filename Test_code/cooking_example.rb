# cooking_example.rb

class Element

  def cooked()
    puts "This is heated"
  end

end

class Food

  def initialize()
    @elements = Element.new()
  end

  def cooked()
    @elements.cooked()
  end

end

class Spaghetti < Food
end

ham = Food.new()
ham.cooked()

lunch = Spaghetti.new
lunch.cooked()