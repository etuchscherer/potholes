require 'spec_helper'

describe "potholes/index" do
  before(:each) do
    assign(:potholes, [
      stub_model(Pothole),
      stub_model(Pothole)
    ])
  end

  it "renders a list of potholes" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
  end
end
