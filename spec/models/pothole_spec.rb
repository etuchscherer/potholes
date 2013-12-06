require 'spec_helper'

describe Pothole do
  # pending "add some examples to (or delete) #{__FILE__}"

  it 'should pass' do
    Hash.new.should == {}
  end

  it 'should have a status' do
    pothole = FactoryGirl.create :pothole
    pothole.status.should == 'reported'
  end

  it 'can set a status' do
    pothole = FactoryGirl.create :pothole
    pothole.status = 'error'
    pothole.status.should == "error"
  end

  it 'refutes bad stati' do
    pothole = FactoryGirl.create :pothole
    pothole.status = "taco"
    pothole.status.should == "reported"
  end
end
