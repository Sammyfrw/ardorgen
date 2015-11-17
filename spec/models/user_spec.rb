require 'spec_helper'

RSpec.describe User do
  it "has a valid factory" do
    expect(create(:user)).to be_valid
  end

  it "is invalid without a name" do
    expect(build(:user, name:nil)).to have(1).errors_on(:name)
  end

  it "is invalid without an email" do
    expect(build(:user, email:nil)).to have(1).errors_on(:email)
  end

  it "is invalid with a duplicated name" do
    create(:user, name: "Louis")
    expect(build(:user, name: "Louis")).to have(1).errors_on(:name)
  end

  it "is invalid with a duplicated email" do
    create(:user, email: "louis@safemail.com")
    expect(build(:user, email: "louis@safemail.com")).to have(1).errors_on(:email)
  end


end
