class PagesController < ApplicationController

  def fortune
    @title = 'Fortune Telling'

    @fortune = ["You will be rich and successful!",
                "You will be poor but happy",
                "I'm having trouble seeing it clearly..."
                ].sample

    # num = rand(3)
    # fortune = ["Yay", "Hello", "Thing"]
    # @tell = fortune[num]

    render 'fortune.html.erb'
  end

  def numbers
    lottery = []

    6.times do
      lottery << rand(60)+1
    end

    @lucky_numbers = lottery.join("-")
    render 'lottery.html.erb'
  end

  def visits
    @@num_visits = 0
    @@num_visits += 1
    @visits = @@num_visits

    render 'uservisits.html.erb'
  end

end
