feature 'Choosing' do
  scenario 'choose Player 1' do
    sign_in_with_two_players
    click_button 'Rock'
    expect(page).to have_content 'Rebecca chose Rock'
  end
end
