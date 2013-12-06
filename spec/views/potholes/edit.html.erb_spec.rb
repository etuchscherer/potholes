require 'spec_helper'

describe "potholes/edit" do
  before(:each) do
    @pothole = assign(:pothole, stub_model(Pothole))
  end

  it "renders the edit pothole form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", pothole_path(@pothole), "post" do
    end
  end
end
