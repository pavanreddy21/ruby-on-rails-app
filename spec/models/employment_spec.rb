require 'rails_helper'

RSpec.describe Employment, type: :model do
  before(:each) do
    @user = User.create(
      name: "John Doe",
      address: "123 Main St",
      email: "john.doe@example.com",
      phone: "555-555-5555"
    )
  end

  it "is not valid with out user " do
    employment = Employment.create(
      employer: "ABC Company",
      start_date: Date.today - 1.year,
      end_date: Date.today
    )
    expect(employment).not_to be_valid
  end

  it "is valid with valid attributes" do
    employment = Employment.create(
      employer: "ABC Company",
      start_date: Date.today - 1.year,
      end_date: Date.today,
      user_id: @user.id
    )
    expect(employment).to be_valid
  end

  it "is not valid without an employer" do
    employment = Employment.new(
      employer: nil,
      start_date: Date.today - 1.year,
      end_date: Date.today,
      user_id: @user.id
    )
    expect(employment).not_to be_valid
  end

  it "is not valid without a start date" do
    employment = Employment.new(
      employer: "ABC Company",
      start_date: nil,
      end_date: Date.today,
      user_id: @user.id
    )
    expect(employment).not_to be_valid
  end

  it "is not valid without an end date" do
    employment = Employment.new(
      employer: "ABC Company",
      start_date: Date.today - 1.year,
      end_date: nil,
      user_id: @user.id
    )
    expect(employment).not_to be_valid
  end

  it "belongs to a user" do
    employment = Employment.create(
      user: @user,
      employer: "ABC Company",
      start_date: Date.today - 1.year,
      end_date: Date.today
    )
    expect(employment.user).to eq(@user)
  end

  it "is not valid if start date is not before end date" do
    employment = Employment.new(
      employer: "ABC Company",
      start_date: Date.today,
      end_date: Date.today - 1.year,
      user_id: @user.id
    )
    expect(employment).not_to be_valid
  end
end
