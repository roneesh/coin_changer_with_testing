require 'coin_changer'

describe CoinChanger do

  before :each do
    @changer = CoinChanger.new
  end

  [
    [1, %w(p)],
    [2, %w(p p)],
    [5, %w(n)],
    [6, %w(n p)],
    [20, %w(d d)],
    [25, %w(q)],
    [36, %w(q d p)],
    [41, %w(q d n p)],
    [74, %w(q q d d p p p p)],
    [75, %w(q q q)],
    [76, %w(q q q p)]
  ].each do |amount, coins|
    it "makes change for #{amount}" do
      @changer.make_change(amount).should == coins
    end
  end



end 

