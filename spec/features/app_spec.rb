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
    expect(page).to have_content 'P1 HP = 100'
    expect(page).to have_content 'P2 HP = 100'
  end
end

feature 'Button for P1 to attack P2' do
  scenario 'Player 1 attacks Player 2' do
    sign_in_and_play
    text = page.find_by_id('p1_attack')
    attack = page.find_by_id('p1_attack_button')
    # expect { attack.click }
    #   .to change { text }.to have_content('P1 Attack')
    attack.click
    expect(page).to have_content('P1 Attack')
    # expect(text).to have_content 'P1 Attack'
  end
end
