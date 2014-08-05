require 'rails_helper'
 
describe User do
 
  include TestFactories
 
  describe "#favorited(post)" do

    before do
      @post = post_without_user
      @user = authenticated_user
    end

    it "returns `nil` if the user has not favorited the post" do
      expect( @user.favorited(@post) ).to eq(nil)
    end
 
    it "returns the appropriate favorite if it exists" do
      @user.favorites.where(post: @post).create
      expect( @user.favorited(@post) ).to eq( @user.favorites.where(post: @post).first )
    end
  end
end