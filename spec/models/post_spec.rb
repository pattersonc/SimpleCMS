require 'spec_helper'

describe Post do
  before(:each) do
    @attr = {
      :title => "Example Post Title",
      :slug => "example-post-slug",
      :content => "<div>hello there.</div>", 
      :active => true
      }
  end
    
  describe "validation" do
    
    it "should be valid with all required fields" do
      @post = Post.new @attr
      @post.should be_valid
    end
    
    it "create should fail without title" do
      @post = Post.new(@attr.merge({ :title => nil }))
      @post.should_not be_valid
    end
    
    it "create should fail without slug" do
      @post = Post.new(@attr.merge({ :slug => nil }))
      @post.should_not be_valid
    end
    
    it "create should fail without content" do
      @post = Post.new(@attr.merge({ :content => nil }))
      @post.should_not be_valid
    end
    
    it "create should fail when slug already exists" do
      Post.create!(@attr)
      @post = Post.new(@attr)
      @post.should_not be_valid
    end
  end
    
  describe "when getting post with slug" do
    before(:each) do
      Post.create!(@attr)
    end    
    
    it "should retrieve active post with valid slug" do
        @post = Post.get(@attr[:slug])
        @post.should_not be_nil
    end

    it "should not retrieve post with invalid slug" do
        @post = Post.get(@attr[:slug] + "-invalid")
        @post.should be_nil
    end
  
  end
  
end
