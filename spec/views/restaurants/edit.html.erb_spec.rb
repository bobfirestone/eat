require 'spec_helper'

describe "restaurants/edit" do
  before(:each) do
    @restaurant = assign(:restaurant, stub_model(Restaurant,
      :name => "MyString",
      :address => "MyString",
      :phone => "MyString",
      :website => "MyString",
      :description => "MyText"
    ))
  end

  it "renders the edit restaurant form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => restaurants_path(@restaurant), :method => "post" do
      assert_select "input#restaurant_name", :name => "restaurant[name]"
      assert_select "input#restaurant_address", :name => "restaurant[address]"
      assert_select "input#restaurant_phone", :name => "restaurant[phone]"
      assert_select "input#restaurant_website", :name => "restaurant[website]"
      assert_select "textarea#restaurant_description", :name => "restaurant[description]"
    end
  end
end
