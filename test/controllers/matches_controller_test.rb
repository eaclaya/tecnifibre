require "test_helper"

class MatchesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @match = matches(:one)
  end

  test "should get index" do
    get matches_url
    assert_response :success
  end

  test "should get new" do
    get new_match_url
    assert_response :success
  end

  test "should create match" do
    assert_difference("Match.count") do
      post matches_url, params: { match: { date: @match.date, games: @match.games, player_one_game_score: @match.player_one_game_score, player_one_id: @match.player_one_id, player_one_match_score: @match.player_one_match_score, player_one_name: @match.player_one_name, player_one_set_score: @match.player_one_set_score, player_two_game_score: @match.player_two_game_score, player_two_id: @match.player_two_id, player_two_match_score: @match.player_two_match_score, player_two_name: @match.player_two_name, player_two_set_score: @match.player_two_set_score, sets: @match.sets } }
    end

    assert_redirected_to match_url(Match.last)
  end

  test "should show match" do
    get match_url(@match)
    assert_response :success
  end

  test "should get edit" do
    get edit_match_url(@match)
    assert_response :success
  end

  test "should update match" do
    patch match_url(@match), params: { match: { date: @match.date, games: @match.games, player_one_game_score: @match.player_one_game_score, player_one_id: @match.player_one_id, player_one_match_score: @match.player_one_match_score, player_one_name: @match.player_one_name, player_one_set_score: @match.player_one_set_score, player_two_game_score: @match.player_two_game_score, player_two_id: @match.player_two_id, player_two_match_score: @match.player_two_match_score, player_two_name: @match.player_two_name, player_two_set_score: @match.player_two_set_score, sets: @match.sets } }
    assert_redirected_to match_url(@match)
  end

  test "should destroy match" do
    assert_difference("Match.count", -1) do
      delete match_url(@match)
    end

    assert_redirected_to matches_url
  end
end
