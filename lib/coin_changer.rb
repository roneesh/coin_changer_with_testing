class CoinChanger

  DENOMINATIONS = { 25 => "q", 10 => "d", 5 => "n", 1 => "p"}

  def make_change(amount)
    
    coins = []

    DENOMINATIONS.each do |key, coin|
      while amount >= key
        coins << coin
        amount -= key
      end
    end


    # while amount >= 25
    #   coins << "q"
    #   amount -= 25
    # end

    # while amount >= 10
    #   coins << "d"
    #   amount -= 10
    # end

    # if amount >= 5
    #   coins << "n"
    #   amount -= 5
    # end
    
    # amount.times { coins << "p"}
 
    return coins   
  end

end