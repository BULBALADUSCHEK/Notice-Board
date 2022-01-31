require 'rails_helper'

RSpec.describe Article, :type => :model do
  it { is_expected.to belong_to(:user) }
  it { is_expected.to have_many(:comments) }

context 'validation' do
    describe 'information presence' do
        let(:article) { described_class.new }

        before do
            article.valid?
        end

    it "is not valid without a title" do
      expect(subject).to_not be_valid
    end

    it "is not valid without a description" do
      subject.description = nil
      expect(subject).to_not be_valid
    end
end
end
end
