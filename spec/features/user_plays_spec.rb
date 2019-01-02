feature 'Play' do
  scenario 'user can click button' do
    sign_in_with_two_players
    visit '/play'
    click_button('rock')
    expect(page).to have_content('Rebecca choose rock')
  end

  # scenario 'computer move' do
  #   sign_in_and_play
  #   click_button 'rock'
  #   expect(page).to have_content(rock)
  #   visit '/do_play'
  #   game = RpsGame.new
  #   @user_move = 'rock'
  #   @computer_move = game.random_move
  #   expect(game.random_move).to eq("#{@computer_move}")
  # end
end
