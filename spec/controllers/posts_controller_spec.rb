require 'spec_helper'

describe PostsController do
  render_views

  describe "GET 'index'" do
    before(:each) do
      @posts = [
        Post.new({
          :title => "Example Title",
          :slug => "example-slug",
          :active => true,
          :content => "<div>hellow world</div>"
        }),
        Post.new({
          :title => "Example Title",
          :slug => "example-slug",
          :active => true,
          :content => "<div>hellow world</div>"
        })]

      Post.stub(:get_all).and_return(@posts)
    end
    
    it "should be successful" do
      get :index
      response.should be_success
    end

    it "should call Post.get_all" do
      Post.should_receive(:get_all)
      get :index
    end
  end

  describe "GET 'show'" do
    before(:each) do
      @post = Post.new({
          :title => "Example Title",
          :slug => "example-slug",
          :active => true,
          :content => "<div>hellow world</div>"
        })
        
      Post.stub(:get).and_return(@post)
    end
    
    it "should call Post.get with :slug param" do
      Post.should_receive(:get).with('example')
      get 'show', :id => 'example'
    end

    it "should be successful" do
      get 'show', :id => 'example'
      response.should be_success
    end
  end
end
