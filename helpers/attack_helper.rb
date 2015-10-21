module AttackHelper
  def attack_and_redirect(game)
    Attack.run(game.opponent_of(game.current_turn))
    if game.game_over?
      redirect '/game-over'
    else
      redirect '/attack'
    end
  end
end