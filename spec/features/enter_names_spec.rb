feature 'Enter names' do
  scenario 'submitting names' do
    sign_in_with_two_players
    expect(page).to have_content("Rebecca vs. Emma")
  end
end
