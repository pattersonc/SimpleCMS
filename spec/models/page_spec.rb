require 'spec_helper'

describe Page do
  
  before(:each) do
    @attr = { :name => "example", 
      :title => "Example Title",
      :slug => "example-slug",
      :content => "<div>hello there.</div>" }
  end
    
  describe "validation" do
    
    it "should be valid with all required fields" do
      @page = Page.new @attr
      @page.should be_valid
    end
    
    it "create should fail without name" do
      @page = Page.new(@attr.merge({ :name => nil }))
      @page.should_not be_valid
    end
    
    it "create should fail without title" do
      @page = Page.new(@attr.merge({ :title => nil }))
      @page.should_not be_valid
    end
    
    it "create should fail without slug" do
      @page = Page.new(@attr.merge({ :slug => nil }))
      @page.should_not be_valid
    end
    
    it "create should fail without content" do
      @page = Page.new(@attr.merge({ :content => nil }))
      @page.should_not be_valid
    end
    
    it "create should fail when slug already exists" do
      Page.create!(@attr)
      @page = Page.new(@attr)
      @page.should_not be_valid
    end
  end
    
  describe "when getting content page that exists" do
    before(:each) do
      
    end    
    
    it "should retrieve active content page by slug" do
    end
  end
  
end
