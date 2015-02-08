#flowers.rb

class Steaks
  def initialize
    p "0 through 9 how would you like your steak?"
    p "0 being not cooked"
    p "9 being charred and crisp"

    p "0 through 3, how hot is your fire?"
    p "0 no fire"
    p "3 being radio-active"
  end

  def stage(heat, finish)
    if heat == 0 || finish == 0
      "not cooking"
    else
      steak_readiness =  ["not cooking",
                          "grill for #{(3/heat).to_f} minutes on either side",
                          "grill for #{(6/heat).to_f} minutes on either side",
                          "grill for #{(9/heat).to_f} minutes on either side",
                          "grill for #{(12/heat).to_f} minutes on either side",
                          "grill for #{(15/heat).to_f} minutes on either side",
                          "grill for #{(18/heat).to_f} minutes on either side",
                          "grill for #{(21/heat).to_f} minutes on either side",
                          "grill for #{(24/heat).to_f} minutes on either side",
                          "grill for #{(27/heat).to_f} minutes on either side"
                          ]
      return steak_readiness[finish]
    end
  end
end

rose = Steaks.new
p rose.stage(3,9)