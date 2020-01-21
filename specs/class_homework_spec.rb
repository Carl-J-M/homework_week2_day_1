require('minitest/autorun')
require('minitest/reporters')
require_relative('../class_homework.rb')

Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new


class TestBankAccount < MiniTest::Test

  def setup
  @student = StudentAccount.new("Carl", "E37")
  @football_team = SportsTeam.new("Liverpool FC", ["P1","P2","P3"],"Coach")
  end

  def test_get_student_name()
    assert_equal("Carl", @student.name)
  end

  def test_get_student_cohort()
    assert_equal("E37", @student.cohort)
  end

  def test_set_student_name()
    @student.change_student_name("Carl Mensah")
    assert_equal("Carl Mensah", @student.name)
  end

  def test_set_student_cohort()
    @student.change_student_cohort("E38")
    assert_equal("E38", @student.cohort)
  end

  def test_say_hello()
  say_hello_string = @student.say_hello()
    assert_equal("Hello my name is Carl.", say_hello_string)
  end

  def test_say_fav_language
    fav_language_string  = @student.say_fav_language("Ruby")
    assert_equal("My favorite language is Ruby!", fav_language_string)
  end

  def test_get_team_name()
    team_name = @football_team.team_name
    assert_equal("Liverpool FC", team_name)
  end

  def test_get_player_array()
    player_array = @football_team.player_array
    assert_equal(["P1","P2","P3"], player_array)
  end

  def test_get_coach_name()
    coach_name = @football_team.coach_name
    assert_equal("Coach", coach_name)
  end

  def test_set_coach_name()
    @football_team.set_coach_name("Coach 2.0")
    assert_equal("Coach 2.0", @football_team.coach_name)
  end

  def test_add_new_player()
    @football_team.add_new_player("P4")
    assert_equal(4, @football_team.player_array.length)
  end

  def test_does_player_exist()
    player_exists_bool = @football_team.does_player_exist("P1")
    assert_equal(true, player_exists_bool)
  end

  def test_update_points()
    @football_team.update_points(1)
    assert_equal(1, @football_team.points)
  end

  # * Create a method that takes in whether the team has won or lost and updates the points property for a win.
  def test_game_history_update()
    @football_team.update_game_history("1 - 0")
    assert_equal(1, @football_team.game_history.length)
  end

end
