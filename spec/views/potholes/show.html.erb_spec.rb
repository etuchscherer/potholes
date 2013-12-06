require 'spec_helper'

describe "potholes/show" do
  before(:each) do
    @pothole = assign(:pothole, stub_model(Pothole))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
  end
end
