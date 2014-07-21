json.array!(@saved_games) do |saved_game|
  json.extract! saved_game, :id, :user_id, :image_1, :image_2, :image_3, :image_4
  json.url saved_game_url(saved_game, format: :json)
end
