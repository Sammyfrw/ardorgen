require 'spec_helper'

describe Race do
  it "is valid with a name, description and method of evolution" do
    race = Race.new(
      name: 'Lyncan',
      description: 'Cool cats',
      evolution: 'Magical')
    expect(race).to be_valid
      end

  it "is invalid without a name" do
    expect(Race.new(name: nil)).to have(1).errors_on(:name)
  end

  it "is invalid without a description" do
    expect(Race.new(description: nil)).to have(1).errors_on(:description)
  end

  it "is invalid without an evolution method" do
    expect(Race.new(evolution: nil)).to have(1).errors_on(:evolution)
  end

  it "is invalid with a duplicated name" do
    Race.create(
      name: 'Lyncan',
      description: 'Cool cats',
      evolution: 'Magical'
    )
    race = Race.new(
      name: 'Lyncan',
      description: 'not cool',
      evolution: 'Magical'
    )
    expect(race).to have(1).errors_on(:name)
  end

  it "returns a race with its details as a string" do
    race = Race.new(
      name: 'Lyncan',
      description: 'not cool',
      evolution: 'Magical'
    )
    expect(race.full_description).to eq 'Lyncan - not cool - Magical'
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
  end

  context "sorting and displaying names of races out of order" do
    it "returns a list of names in alphabetical order" do
      expect(Race.order_by_name). to_not eq ['Lyncan', 'Loupain', 'Sapien']
    end
  end
end
