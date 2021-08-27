require 'rails_helper'

RSpec.describe Category, type: :model do
  describe "create" do
    it "validates name" do
        is_expected_to validate_presence_of(:name)
    end
  end
end
