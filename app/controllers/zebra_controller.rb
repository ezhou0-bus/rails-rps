class ZebraController < ApplicationController
  def giraffe
    @random_move = ["rock", "paper", "scissors"].sample
    render template: "game_template/play_rock"
  end

  def elephant
    @random_move = ["rock", "paper", "scissors"].sample
    render template: "game_template/play_paper"
  end

  def lion
    @random_move = ["rock", "paper", "scissors"].sample
    render template: "game_template/play_scissor"
  end

  def rules
    render template: "rules"
  end
end

