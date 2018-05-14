require 'rails_helper'

RSpec.describe "User SignUp", :type => :system do
  it "should be able to sign up" do
    visit '/users/sign_up'

    fill_in 'Email', with: 'test@test.com'
    fill_in 'First name', with: 'John'
    fill_in 'Last name', with: 'Doe'
    fill_in 'Middle name', with: 'Mname'
    fill_in 'Birthday', with: Faker::Date.birthday
    fill_in 'Tax number', with: Faker::Number.number(10)

  end
end
