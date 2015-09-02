require 'spec_helper'

describe Character do
  it "has a valid factory" do
    expect(create(:character)).to be_valid
  end
end
