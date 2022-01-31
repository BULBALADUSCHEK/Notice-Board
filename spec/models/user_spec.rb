require 'rails_helper'

RSpec.describe User, :type => :model do
  it {is_expected.to have_many(:articles).dependent(:destroy) }

  subject {
        described_class.new(username: "WWWWW",
                            email: "wwwww@mail.com",                       
                            password_digest: "225555555555552")
  }
context 'Validation' do
  describe "information presence" do
    let(:user) { described_class.new }

    before do
      user.valid?
    end

    it "is not valid without a username" do
      subject.username = nil
      expect(subject).to_not be_valid
    end

    it "is not valid without a email" do
      subject.email = nil
      expect(subject).to_not be_valid
    end

    it "is not valid without a password_digest" do
      subject.password_digest = nil
      expect(subject).to_not be_valid
    end
  end
end
end
