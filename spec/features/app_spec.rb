require './app'

feature 'Enter player names to begin' do
  scenario 'Returns player names on battle screen' do
    sign_in_and_play
    expect(page).to have_content 'P1'
    expect(page).to have_content 'P2'
  end
end

feature 'Displayer players hit points' do
  scenario 'Players have hit points' do
    sign_in_and_play
    expect(page).to have_content 'HP: 100'
  end
end

describe 'Attacking a player', js: true do
  feature 'Button for P1 to attack P2' do
    scenario 'Player 1 attacks Player 2' do
      skip
      sign_in_and_play
      attack = page.find_by_id('p1_attack_button')
      attack.click
      expect(page).to have_content('P1 attacked P2')
    end
  end
end
