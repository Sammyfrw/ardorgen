require 'spec_helper'

describe Region do
  it "has a valid factory" do
    expect(create(:region)).to be_valid
  end
end
