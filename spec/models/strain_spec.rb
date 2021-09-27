require 'rails_helper'

RSpec.describe Strain, type: :model do
  # This test includes Shoulda Matchers
  it { should validate_uniqueness_of(:name) }
  it "is not valid without a name" do
    strain = Strain.new(name: nil)
    expect(strain).to_not be_valid
  end
  it "is not valid without a name" do
    strain = Strain.new(name: "")
    expect(strain).to_not be_valid
  end
end
