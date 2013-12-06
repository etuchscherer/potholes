require 'spec_helper'

describe User do

  it 'users can_report?' do
    normal = FactoryGirl.create :user
    normal.can_report?.should == true

    official = FactoryGirl.create :official
    official.can_report?.should == true

    superuser = FactoryGirl.create :super_user
    superuser.can_report?.should == true
  end

  it 'users can_officiate?' do
    normal = FactoryGirl.create :user
    normal.can_officiate?.should == false

    official = FactoryGirl.create :official
    official.can_officiate?.should == true

    superuser = FactoryGirl.create :super_user
    superuser.can_officiate?.should == true
  end

  it 'users superuser?' do
    normal = FactoryGirl.create :user
    normal.superuser?.should == false

    official = FactoryGirl.create :official
    official.superuser?.should == false

    superuser = FactoryGirl.create :super_user
    superuser.superuser?.should == true
  end
end
