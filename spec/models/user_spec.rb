# frozen_string_literal: true

require 'rails_helper'

RSpec.describe User, type: :model do
  context 'associations' do
    it { is_expected.to have_many(:messages).dependent(:destroy) }
  end

  context 'validations' do
    it { is_expected.to validate_presence_of(:username) }
    it { is_expected.to allow_value('foo').for(:username) }
    it { is_expected.to allow_value('bar123').for(:username) }
    it { is_expected.to_not allow_value('foobar123!').for(:username) }
    it { is_expected.to validate_length_of(:username).is_at_most(15) }
    it { is_expected.to validate_length_of(:password).is_at_least(6) }
    subject { create(:user) }
    it { is_expected.to validate_uniqueness_of(:username).case_insensitive }
  end
end
