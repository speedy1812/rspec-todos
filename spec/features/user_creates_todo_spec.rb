feature "User creates todo" do
  scenario "successfully" do

    todo_title = "Buy milk"

    sign_in
      
    create_todo todo_title

    expect(page).to display_todo todo_title
  end
end
