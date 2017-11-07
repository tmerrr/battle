require './app'

feature 'Testing Infrastructure' do
  scenario 'Returns player names' do
    sign_in_and_play
    expect(page).to have_content 'cristhian'
    expect(page).to have_content 'tom'
  end

  scenario 'Players have hit points' do
    sign_in_and_play
    expect(page).to have_content 'P1 HP = 100'
    expect(page).to have_content 'P2 HP = 100'
  end
end
