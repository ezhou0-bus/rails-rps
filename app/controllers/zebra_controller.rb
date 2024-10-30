class ZebraController < ApplicationController
  def giraffe
    user_choice = "rock"
    computer_choice = ["rock", "paper", "scissors"].sample

    if user_choice == computer_choice
      @outcome = "We tied"
    elsif (user_choice == "rock" && computer_choice == "scissors")
      @outcome = "We won"
    else
      @outcome = "We lost"
    end

    @user_choice = user_choice
    @computer_choice = computer_choice

    render template: "game_template/play_rock"
  end

  
  def elephant
    user_choice = "paper"
  computer_choice = ["rock", "paper", "scissors"].sample

  if user_choice == computer_choice
    @outcome = "We tied!"
  elsif (user_choice == "paper" && computer_choice == "rock")
    @outcome = "We won!"
  else
    @outcome = "We lost!"
  end

  @user_choice = user_choice
  @computer_choice = computer_choice

    render template: "game_template/play_paper"
  end

  def lion
    user_choice = "scissors"
    computer_choice = ["rock", "paper", "scissors"].sample
  
    if user_choice == computer_choice
      @outcome = "We tied!"
    elsif (user_choice == "scissors" && computer_choice == "paper")
      @outcome = "We won!"
    else
      @outcome = "We lost!"
    end
  
    @user_choice = user_choice
    @computer_choice = computer_choice
    render template: "game_template/play_scissors"
  end

  def rules
    render template: "rules"
  end
end
