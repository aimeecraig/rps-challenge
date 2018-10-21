feature 'Multiplayer' do
  scenario 'player 1 and player 2 enter their names and get a welcome screen' do
    visit '/'
    select 'Two Player', from: 'players'
    click_button 'Submit'
    fill_in 'Player 1 Name', with: "Mittens"
    fill_in 'Player 2 Name', with: "Dave"
    click_button 'Submit'
    expect(page).to have_content 'Mittens vs. Dave!'
  end
end
