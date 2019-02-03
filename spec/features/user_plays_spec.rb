feature 'registering name' do
  scenario 'player submit a name' do
    sign_in
    expect(page).to have_content 'Sam'
  end
  scenario 'user can click radio button' do
    sign_in_and_play
    choose('move_rock')
    expect(page).to have_selector("input[value='Rock']")
  end
end
