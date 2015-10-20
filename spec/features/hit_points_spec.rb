# As Player 1,
# So I can see how close I am to winning
# I want to see Player 2's Hit Points

feature 'View hit points' do
  scenario 'see Player 2 hit points' do
    visit('/')
    fill_in :player_1_name, with: 'Dave'
    fill_in :player_2_name, with: 'Mittens'
    click_button 'Submit'
    expect(page).to have_content 'Mittens: 60HP'
  end
end