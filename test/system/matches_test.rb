require "application_system_test_case"

class MatchesTest < ApplicationSystemTestCase
  setup do
    @match = matches(:one)
  end

  test "visiting the index" do
    visit matches_url
    assert_selector "h1", text: "Matches"
  end

  test "should create match" do
    visit matches_url
    click_on "New match"

    fill_in "Date", with: @match.date
    fill_in "Games", with: @match.games
    fill_in "Player one game score", with: @match.player_one_game_score
    fill_in "Player one", with: @match.player_one_id
    fill_in "Player one match score", with: @match.player_one_match_score
    fill_in "Player one name", with: @match.player_one_name
    fill_in "Player one set score", with: @match.player_one_set_score
    fill_in "Player two game score", with: @match.player_two_game_score
    fill_in "Player two", with: @match.player_two_id
    fill_in "Player two match score", with: @match.player_two_match_score
    fill_in "Player two name", with: @match.player_two_name
    fill_in "Player two set score", with: @match.player_two_set_score
    fill_in "Sets", with: @match.sets
    click_on "Create Match"

    assert_text "Match was successfully created"
    click_on "Back"
  end

  test "should update Match" do
    visit match_url(@match)
    click_on "Edit this match", match: :first

    fill_in "Date", with: @match.date
    fill_in "Games", with: @match.games
    fill_in "Player one game score", with: @match.player_one_game_score
    fill_in "Player one", with: @match.player_one_id
    fill_in "Player one match score", with: @match.player_one_match_score
    fill_in "Player one name", with: @match.player_one_name
    fill_in "Player one set score", with: @match.player_one_set_score
    fill_in "Player two game score", with: @match.player_two_game_score
    fill_in "Player two", with: @match.player_two_id
    fill_in "Player two match score", with: @match.player_two_match_score
    fill_in "Player two name", with: @match.player_two_name
    fill_in "Player two set score", with: @match.player_two_set_score
    fill_in "Sets", with: @match.sets
    click_on "Update Match"

    assert_text "Match was successfully updated"
    click_on "Back"
  end

  test "should destroy Match" do
    visit match_url(@match)
    click_on "Destroy this match", match: :first

    assert_text "Match was successfully destroyed"
  end
end
