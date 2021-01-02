require 'rails_helper'

RSpec.describe Picture, type: :model do

  let(:user) { create(:user) }
  let(:picture) { Picture.new(caption: "test photo", user_id: user.id) }

  it 'belongs to a user' do
    expect(picture).to respond_to(:user)
  end

  it 'is invalid without a caption' do
    picture.caption = nil
    expect(picture).to_not be_valid
  end

  it 'is invalid without a user' do
    picture.user_id = nil
    expect(picture).to_not be_valid
  end

  it 'is valid' do
    expect(picture).to be_valid
  end

  it 'has a list of tags' do
    expect(picture).to respond_to(:tag_list)
  end

end
