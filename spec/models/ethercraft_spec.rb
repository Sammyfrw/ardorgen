require 'spec_helper'

describe Ethercraft do
  it "has a valid factory" do
    expect(create(:ethercraft)).to be_valid
  end
end
