def sign_in_and_play
  visit('/')
  fill_in('player1', with: 'cristhian')
  fill_in('player2', with: 'tom')
  click_button('Submit')
end
