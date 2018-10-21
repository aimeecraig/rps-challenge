feature 'Lizard Spock' do
  scenario 'player 1 plays Paper and loses against Spock' do
    visit '/'
    select 'Two Player', from: 'players'
    click_button 'Submit'
    fill_in 'Player 1 Name', with: "Mittens"
    fill_in 'Player 2 Name', with: "Dave"
    click_button 'Submit'
    select 'Paper', from: 'player_1_move'
    select 'Spock', from: 'player_2_move'
    click_button 'Submit'
    expect(page).to have_content 'Mittens chose Paper'
    expect(page).to have_content 'Dave chose Spock'
    expect(page).to have_content 'Dave wins!'
  end
end
