#blackjack.rb

class Blackjack
  def initialize
    @playerhand = 0
    @dealerhand = 0
  end

  def play
    while @playerhand < 17
      hit = rand(11)+1
      @playerhand += hit
      puts "you hit for #{hit}"
      puts "you have a hand of #{@playerhand}"
    end
  end

  def deal
    while @dealerhand <= @playerhand
      hit = rand(11)+1
      @dealerhand += hit
      puts "dealer hits for #{hit}"
      puts "dealers has a hand of #{@dealerhand}"
    end
  end
end

player = Blackjack.new
player.play

dealer = Blackjack.new
dealer.deal

