feature 'Choosing' do
  scenario 'choose Player 2' do
    sign_in_with_two_players
    expect(page).to have_content 'Emma chose'
  end
end
