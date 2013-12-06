require 'spec_helper'

describe "potholes/new" do
  before(:each) do
    assign(:pothole, stub_model(Pothole).as_new_record)
  end

  it "renders new pothole form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", potholes_path, "post" do
    end
  end
end
