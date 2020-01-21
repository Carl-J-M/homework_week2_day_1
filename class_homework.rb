class StudentAccount
attr_accessor :name, :cohort

  def initialize(input_name, input_cohort)
    #initialize state with parameters
    @name = input_name
    @cohort = input_cohort

  end

  def change_student_name(new_name)
    @name = new_name
  end

  def change_student_cohort(new_cohort)
    @cohort = new_cohort
  end

  def say_hello()
      p "Hello my name is #{@name}."
  end

  def say_fav_language(fav_language)
      p "My favorite language is #{fav_language}!"
  end

end

class SportsTeam
  attr_accessor :team_name, :player_array, :coach_name, :points, :game_history

    def initialize(input_name, input_player_array, input_coach)
      #initialize state with parameters
      @team_name = input_name
      @player_array = input_player_array
      @coach_name = input_coach
      @points = 0
      @game_history = []

    end

    def set_coach_name(new_name)
      @coach_name = new_name
    end

    def add_new_player(new_player)
      @player_array.push(new_player)
    end


    def does_player_exist(player_to_check)
      for player in @player_array
        if player_to_check == player
          return true
        end
      end
    end

    def update_points(points_to_add)
      @points += points_to_add
    end

    def update_game_history(new_game)
      @game_history.push(new_game)
    end
end
