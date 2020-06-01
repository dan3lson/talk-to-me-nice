# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Message, type: :model do
  context 'associations' do
    it { is_expected.to belong_to(:user) }
  end

  context 'validations' do
    it { is_expected.to validate_presence_of(:content) }
  end
end
