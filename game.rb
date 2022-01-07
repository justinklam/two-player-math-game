class Game
  attr_accessor :current_player

  def initialize(player_1, player_2)
    puts "Welcome to the Two-Player Math Game!"
    @player_1 = Player.new(player_1)
    @player_2 = Player.new(player_2)
    @current_player = @player_1
    @game_state = true
  end
         
  def game_run
    while @game_state
      # generate new question
      new_question = Questions.new()
      # display question
      new_question.display_question()
      # get user response
      user_response = gets.chomp
      # answer check
      right_answer = new_question.answer_checked(user_response.to_i)
      score_check(@current_player, right_answer)
      check_game_state()
      player_rotation()
    end
  end

  def score_check(player, right_answer)
    if right_answer
      player.player_score = player.player_score + 1
      puts "Correct! #{player.name}'s Score> #{player.player_score}"
    else
      player.player_score = player.player_score
      player.player_life = player.player_life - 1
      puts "Incorrect #{player.name}! -----> #{player.player_life}/3 lives left"
    end
  end

  def check_game_state
    if @current_player.player_life <= 0
      @game_state = false
      puts "Game Over!"
    end
  end

  def player_rotation
    if @current_player == @player_1
      @current_player = @player_2
      puts "#{@current_player.name}'s turn!"
    else
      @current_player = @player_1
      puts "#{@current_player.name}}'s turn!"
    end
  end

end