#blackjack.rb

class Game
  def initialize
    @dealerhand = 0
    @playerhand = 0
  end

  def play
    while @playerhand < 17
      hit = rand(11)+1
      @playerhand += hit
      puts "you hit for #{hit}"
      puts "you have a hand of #{@playerhand}"
    end
    @playerhand
  end

  def deal
    while @dealerhand < 21 || @dealerhand <= @playerhand
      hit = rand(11)+1
      @dealerhand += hit
      puts "dealer hits for #{hit}"
      puts "dealers has a hand of #{@dealerhand}"
    end
   @dealerhand
  end
end

class Winner
  def initialize
    @game = Game.new
  end

  def winner
    @phand = @game.play
    if @phand > 21
      puts "You Bust!"
    elsif @phand == 21
      puts "Blackjack! You win!"
    else
      @dhand = @game.deal
      if @dhand > 21
        puts "Dealer busts! You win!"
      elsif @dhand <= 21 && @dhand > @phand
        puts "Dealer wins!"
      else
        puts "You split!"
      end
    end
  end
end

blackjack = Winner.new
blackjack.winner

