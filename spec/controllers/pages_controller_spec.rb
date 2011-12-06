require 'spec_helper'

describe PagesController do
  render_views

  before(:each) do

    page = Page.new({
      :name => "example name",
      :title => "Example Title",
      :slug => "example-slug",
      :active => true,
      :content => "<div>hellow world</div>"
      })


    Page.stub(:content_page).and_return(page)
  end

  describe "GET 'content' without :id param" do
    it "should be successful" do
      get 'content'
      response.should be_success
    end
  end

  describe "GET 'content' without :id param" do
    it "should be successful" do
      get 'content'
      response.should be_success
    end

    it "should call Page.content_page with nil" do
      Page.should_receive(:content_page).with(nil)
      get 'content'
    end
  end

  describe "GET 'content' witout :id param" do
    it "should call Page.content_page with :id param" do
      Page.should_receive(:content_page).with('example')
      get 'content', :slug => 'example'
    end

    it "should be successful" do
      get 'content', :slug => 'example'
      response.should be_success
    end
  end

end
