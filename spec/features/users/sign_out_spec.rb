# Feature: Sign out
#   As a user
#   I want to sign out
#   So I can protect my account from unauthorized access
feature 'Sign out', :devise do

  before do
    @user = FactoryGirl.create(:user)
    signin(@user.email, @user.password)
  end

  scenario 'user is signed in' do
    expect(page).to have_content I18n.t 'devise.sessions.signed_in'
  end

  # Scenario: User signs out successfully
  #   Given I am signed in
  #   When I sign out
  #   Then I see a signed out message
  scenario 'user signs out successfully' do
    click_link 'Sign out'
    expect(page).to have_content I18n.t 'devise.sessions.signed_out'
    # Add your test for this
    # HINT: identify the sign out message and test that
  end
end
