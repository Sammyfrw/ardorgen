require 'spec_helper'

describe Place do
  it "has a valid factory" do
    expect(create(:place)).to be_valid
  end
end
