feature 'Enter names' do
  scenario 'submitting names' do
    visit '/'
    fill_in :player_1_name, with: 'Rebecca'
    fill_in :player_2_name, with: 'Emma'
    click_button 'Submit'
    expect(page).to have_content("Rebecca vs. Emma")
  end
end
