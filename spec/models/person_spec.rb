require 'spec_helper'

describe Person do
  it "is invalid without the first_name" do
    person = Person.new(first_name: nil)
    expect(person).not_to be_valid
  end

  it "is invalid without the last_name" do
    person = Person.new(first_name: 'prabhakar', last_name: nil)
    expect(person).not_to be_valid
  end

  it "the first_name should be more then 3 characters" do
    person = Person.new(first_name: 'bb', last_name: 'undurthi')
    expect(person).not_to be_valid
  end

  it "the last_name must be more than 3 characters" do
    person = Person.new(first_name: 'prabhakar', last_name: 'bn')
    expect(person).not_to be_valid
  end
end
