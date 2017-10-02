feature "User completes todo" do
  scenario "successfully" do
    sign_in
      
    create_todo "Buy milk"

    expect(page).to have_css '.todos li', text: 'Buy milk'

    click_on "Mark complete"

    expect(page).to display_completed_todo 'Buy milk'
  end
end
