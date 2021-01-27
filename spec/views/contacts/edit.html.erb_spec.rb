require 'rails_helper'

RSpec.describe "contacts/edit", type: :view do
  before(:each) do
    @contact = assign(:contact, Contact.create!(
      :first_name => "MyString",
      :last_name => "MyString",
      :email => "MyString",
      :country_code => "MyString",
      :phone_number => "MyString",
      :message => "MyText"
    ))
  end

  it "renders the edit contact form" do
    render

    assert_select "form[action=?][method=?]", contact_path(@contact), "post" do

      assert_select "input[name=?]", "contact[first_name]"

      assert_select "input[name=?]", "contact[last_name]"

      assert_select "input[name=?]", "contact[email]"

      assert_select "input[name=?]", "contact[country_code]"

      assert_select "input[name=?]", "contact[phone_number]"

      assert_select "textarea[name=?]", "contact[message]"
    end
  end
end
