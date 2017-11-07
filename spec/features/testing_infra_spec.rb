require './app'

feature 'Testing Infrastructure' do
  scenario 'Can run app and check page content' do
    visit('/')
    expect(page).to have_content 'Testing Infrastructure'
  end
end
