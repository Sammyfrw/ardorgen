require 'spec_helper'

describe Race do
  it "has a valid factory" do
    expect(create(:magic_race)).to be_valid
  end

  it "is invalid without a name" do
    expect(build(:magic_race, name:nil)).to have(1).errors_on(:name)
  end

  it "is invalid without a description" do
    expect(build(:magic_race, description: nil)).to have(1).errors_on(:description)
  end

  it "is invalid without an evolution method" do
    expect(build(:magic_race, evolution: nil)).to have(1).errors_on(:evolution)
  end

  it "is invalid with a duplicated name" do
    create(:magic_race, name: "Lyncan")
    expect(build(:magic_race, name: "Lyncan")).to have(1).errors_on(:name)
  end

  it "returns a race with its details as a string" do
    expect((build(:magic_race,
      name: "Lyncan",
      description: "Cool cats")
    ).full_description).to eq 'Lyncan - Magical - Cool cats'
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

  context "sorting and displaying names of races in order" do
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
