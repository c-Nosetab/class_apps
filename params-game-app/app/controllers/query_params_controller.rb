class QueryParamsController < ApplicationController

  def query
    @name = params["name"].upcase
    @message_2 = params["other_message"]

    if @name.start_with?("A")
      @name_message = "Hey, your name starts with the first letter of the alphabet!"
    else
      @name_message = "Nope"
    end







  end

  def num_guess
    win_num = 50
    @number = params["guess"]

    if @number.to_i == win_num
      @message = "You guessed right!! Congrats!"
    elsif @number.to_i > win_num
      @message = "Too high, try again."
    elsif @number.to_i < win_num
      @message = "Too low, try again."
    else
      @message = "No number was guessed"
    end

  end

  def url_segment
    @message_thing = params["this_is_a_key"]
  end


  def segment
    @guess = params["num_guess"]
    segment_win = 45

    if @guess.to_i == segment_win
      @seg_message = "Correct!!!!!"
    elsif @guess.to_i > segment_win
      @seg_message = "Too high, try again!"
    elsif @guess.to_i < segment_win
      @seg_message = "Too low, try again"
    end

  end

  def form_submit
  end

  def answer
    @guess = params["guess"]
    win_guess = 50

    if @guess.to_i == win_guess
      @form_message = "Correct!!!!!"
    elsif @guess.to_i > win_guess
      @form_message = "Too high, try again!"
    elsif @guess.to_i < win_guess
      @form_message = "Too low, try again"
    end
  end

end
