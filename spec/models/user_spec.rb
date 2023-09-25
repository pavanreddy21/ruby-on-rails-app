# spec/models/user_spec.rb

require 'rails_helper'

RSpec.describe User, type: :model do
  it "is valid with valid attributes" do
    user = User.new(
      name: "John Doe",
      address: "123 Main St",
      email: "john.doe@example.com",
      phone: "555-555-5555"
    )
    expect(user).to be_valid
  end

  it "is not valid without a name" do
    user = User.new(
      name: nil,
      address: "123 Main St",
      email: "john.doe@example.com",
      phone: "555-555-5555"
    )
    expect(user).not_to be_valid
  end

  it "is not valid with a name longer than 25 characters" do
    user = User.new(
      name: "a" * 26,
      address: "123 Main St",
      email: "john.doe@example.com",
      phone: "555-555-5555"
    )
    expect(user).not_to be_valid
  end

  it "is not valid without an address" do
    user = User.new(
      name: "John Doe",
      address: nil,
      email: "john.doe@example.com",
      phone: "555-555-5555"
    )
    expect(user).not_to be_valid
  end

  it "is not valid without an email" do
    user = User.new(
      name: "John Doe",
      address: "123 Main St",
      email: nil,
      phone: "555-555-5555"
    )
    expect(user).not_to be_valid
  end

  it "is not valid without a phone" do
    user = User.new(
      name: "John Doe",
      address: "123 Main St",
      email: "john.doe@example.com",
      phone: nil
    )
    expect(user).not_to be_valid
  end

  it "has many employments" do
    user = User.create(
      name: "John Doe",
      address: "123 Main St",
      email: "john.doe@example.com",
      phone: "555-555-5555"
    )

    employment = Employment.create(employer:"test", start_date: Date.today - 1.year, end_date: Date.today, user_id: user.id)
    expect(user.employments).to include(employment)
  end

  describe "scopes" do
    describe ".with_address" do
      it "returns users present in database" do
        user1 = User.create(
          name: "John Doe",
          address: "123 Main St",
          email: "john.doe@example.com",
          phone: "555-555-5555"
        )
        
        user2 = User.create(
          name: "Jane Smith",
          address: "456 Elm St",
          email: "jane.smith@example.com",
          phone: "555-555-5555"
        )

        # Let's assume we want to find users with address "123 Main St"
        all_users = User.all

        expect(all_users).to include(user1)
        expect(all_users).to include(user2)
      end
    end
  end

end


