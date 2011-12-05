require 'spec_helper'

describe PagesController do
#  render_views

  before(:each) do
    page = double(:Page) do |p|
      p.name = "example name",
      p.title = "Example Title",
      p.slug = "index",
      p.content = "<div>hello world.</div>"
    end

    Page.stub(:content_page).and_return(page)
  end

  describe "GET 'content' without :id param" do
    it "should be successful" do
      get 'content'
      response.should be_success
    end
  end

  describe "GET 'content' with :id param" do
    it "should be successful" do
      get 'content', :id => 'example'
      response.should be_success
    end

    it "should call content_page with :id param" do
      Page.should_receive(:content_page).with('example')
      get 'content', :id => 'example'
    end
  end

end
