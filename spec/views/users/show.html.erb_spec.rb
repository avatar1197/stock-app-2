require 'rails_helper'

RSpec.describe "users/show", type: :view do
  before(:each) do
    @user = assign(:user, User.create!(
      name: "Name",
      email: "email@example.com",
      role: "admin"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/email@example.com/)
    expect(rendered).to match(/admin/)
  end
end
