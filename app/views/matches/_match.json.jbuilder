json.extract! match, :id, :player_one_id, :player_two_id, :player_one_game_score, :player_two_game_score, :player_one_set_score, :player_two_set_score, :player_one_match_score, :player_two_match_score, :player_one_name, :player_two_name, :sets, :games, :date, :created_at, :updated_at
json.url match_url(match, format: :json)
