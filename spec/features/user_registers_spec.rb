feature 'Player registers' do
  scenario 'player submit a name' do
    sign_in
    visit '/play'
    expect(page).to have_content 'Sam'
    expect(page).to have_selector("input[value='Rock']")
    expect(page).to have_selector("input[value='Paper']")
    expect(page).to have_selector("input[value='Scissors']")

  end
end
