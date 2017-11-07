require './app'

feature 'Testing Infrastructure' do

  scenario 'Returns player names' do
    visit('/')
    fill_in('player1', with: 'cristhian')
    fill_in('player2', with: 'tom')
    click_button('Submit')
    expect(page).to have_content 'cristhian'
    expect(page).to have_content 'tom'
  end
end
