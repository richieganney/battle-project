feature 'Testing infrastructure' do
  scenario 'Can run app and check page content' do
    visit('/')
    expect(page).to have_content 'Welcome to Battle. Your death awaits'
  end
end

feature 'play button' do
  scenario 'play button re-directs you to player naming page' do
    visit('/')
    click_button 'Play!'
    expect(page).to have_content 'Enter Player Names'
  end
end

feature 'Entering players' do
  scenario 'allows to enter names and be greeted on the following page' do
    visit('/players')
    fill_in :player_1, with: 'Richie'
    fill_in :player_2, with: 'Charlie'
    click_button 'Submit'
    expect(page).to have_content 'Richie vs. Charlie'
  end
end
