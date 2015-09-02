require 'spec_helper'

describe Character do
  it "has a valid factory" do
    expect(create(:male_character)).to be_valid
    expect(create(:female_character)).to be_valid
    expect(create(:other_character)).to be_valid
  end
end
