require 'spec_helper'

describe Country do
  it "has a valid factory" do
    expect(create(:country)).to be_valid
  end
end
