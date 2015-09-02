require 'spec_helper'

describe Race do
  it "has a valid factory" do
    expect(create(:race)).to be_valid
  end

  it "is invalid without a name" do
    expect(build(:race, name:nil)).to have(1).errors_on(:name)
  end

  it "is invalid without a description" do
    expect(build(:race, description: nil)).to have(1).errors_on(:description)
  end

  it "is invalid without an evolution method" do
    expect(build(:race, evolution: nil)).to have(1).errors_on(:evolution)
  end

  it "is invalid with a duplicated name" do
    create(:race, name: "Lyncan")
    expect(build(:race, name: "Lyncan")).to have(1).errors_on(:name)
  end

  it "returns a race with its details as a string" do
    expect((build(:race, name: "Lyncan")).full_description).to eq 'Lyncan - Magical - not cool'
  end
end

describe "Displaying race names" do
  before :each do
    Race.create(
      name: 'Lyncan',
      description: 'Cool cats',
      evolution: 'Magical'
    )
    Race.create(
      name: 'Loupain',
      description: 'Cool dogs',
      evolution: 'Biological'
    )
    Race.create(
      name: 'Sapien',
      description: 'Cool dudes',
      evolution: 'Biological'
    )
  end

  context "sorting and displaying names of races" do
    it "returns a list of names in alphabetical order" do
      expect(Race.order_by_name). to eq ['Loupain', 'Lyncan', 'Sapien']
    end
  end

  context "sorting and displaying names of races out of order" do
    it "returns a list of names in alphabetical order" do
      expect(Race.order_by_name). to_not eq ['Sapien', 'Lyncan', 'Loupain']
    end
  end
end
