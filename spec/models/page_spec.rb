# == Schema Information
#
# Table name: pages
#
#  id            :integer         not null, primary key
#  slug          :string(255)
#  content       :text(255)
#  created_at    :datetime
#  updated_at    :datetime
#  title         :string(255)
#  active        :boolean         default(TRUE)
#  display_order :integer         default(0)
#

require 'spec_helper'

describe Page do
  
  before(:each) do
    @attr = {
      :title => "Example Title",
      :slug => "example-slug",
      :content => "<div>hello there.</div>" 
      }
  end
    
  describe "validation" do
    
    it "should be valid with all required fields" do
      @page = Page.new @attr
      @page.should be_valid
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
    
  describe "when getting content page with slug" do
    before(:each) do
      Page.create!(@attr)
    end    
    
    it "should retrieve active content page with valid slug" do
        @page = Page.content_page(@attr[:slug])
        @page.should_not be_nil
    end

    it "should not retrieve active content page with invalid slug" do
        @page = Page.content_page(@attr[:slug] + "-invalid")
        @page.should be_nil
    end
  
  end
  
  describe "when getting content page without slug" do
    before(:each) do
      Page.create(@attr.merge(:slug => 'index'))
    end
    
    it "should retrieve content with slug 'index' when :slug is nil" do
        @page = Page.content_page(nil)
        @page.should_not be_nil
    end  
  
  end
  
end
