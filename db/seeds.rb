# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


 # Create a default user
if(AdminUser.find_by_email('admin@example.com').nil?)
  AdminUser.create!(:email => 'admin@example.com', :password => 'password', 
    :password_confirmation => 'password')
end

Page.delete_all

Page.create( {
  :slug => 'index',
  :display_order => 1,
  :title => 'Home',
  :content => <<eos
<div id="spinner"> <ul> <li> <img src="/assets/slider-1.jpg" /> <span class="title">2011 Golf Outing</span> <span class="sub-title"><a href="#">View Photo Gallery</a></span></li> <li> <img src="/assets/slider-1.jpg" /> <span class="title">2011 Golf Outing</span> <span class="sub-title"><a href="#">View Photo Gallery</a></span></li> </ul> </div> <div id="article-wrapper"> <article> <h2>Welcome</h2> <div class="by-line"> &nbsp;</div> <div class="date"> &nbsp;</div> <div class="entry-content">We believe that those who are blessed with good fortune have a unique responsibility to help others. Founder Paul Merrick also believes that it is both practical and responsible for a business to invest in the community it serves. In 2008, the Merrick Family Foundation was formed to enhance the lives of children and young adults who have experienced unforeseen circumstances. By dedicating time and money, this family foundation seeks to increase opportunity and improve the lives of others along the way. </div> </article> </div>
eos
} )

Page.create( {
  :slug => 'events',
  :display_order => 1,
  :title => 'Events',
  :content => <<eos
<div id="article-wrapper"> <article> <h2> Events</h2> <div class="by-line"> &nbsp;</div> <div class="date" style="text-align: center; "> <strong>3rd Annual</strong></div> <div class="entry-content"> <div style="text-align: center; "> <strong>Merrick Family Foundation&nbsp;</strong><strong>Golf Outing</strong></div> <div style="text-align: center; "> &nbsp;</div> <div style="text-align: center; "> Friday, April 27, 2012</div> <div style="text-align: center; "> Chesapeake Bay Golf Club,&nbsp;</div> <div style="text-align: center; "> North East, MD</div> <div style="text-align: center; "> &nbsp;</div> <div style="text-align: center; "> <a href="/pdfs/mff-3rd-annual-golf-outing-broc.pdf" target="_blank">Download Brochure</a></div> </div> </article> </div>
eos
} )

Page.create( {
  :slug => 'beneficiaries',
  :display_order => 3,
  :title => 'beneficiaries',
  :content => <<eos
  <div id="article-wrapper"> <article> <h2> Beneficiaries</h2> <div class="by-line"> &nbsp;</div> <div class="date"> &nbsp;</div> <div class="entry-content"> <h3> Michael Bergey - 2011</h3> <p> Michael Bergey&rsquo;s expectations for a long and healthy life were placed in jeopardy following a tragic pool accident in August 2010. Michael was enjoying some free time with friends when he suffered a severe spinal cord injury after falling to the bottom of a pool. Michael is now a quadriplegic and dependent on a ventilator to breathe.</p> <p> In 2010, as a result of a successful golf outing, the Merrick Family Foundation was able to donate funds to Michael to aid in his medical bills as well as to help his family acquire a van to assist with transportation to and from Michael&rsquo;s doctor&rsquo;s appointments.</p> <p> Michael has since graduated from high school and recently acquired the van he so needed to aid in his successful recovery. We wish Michael all the best and will be sure to provide updates on his continued improvement.</p> <p> &nbsp;</p> <h3> Nancy Poloncarz Francolini&nbsp;- 2010</h3> <p> Nancy Poloncarz Francolini was diagnosed with breast cancer in 2007. She underwent a bilateral mastectomy in July 2007 and began chemotherapy treatments. In late August 2008, Nancy discovered that the cancer had spread to her lungs. By November 2008, it had spread to her bones, liver, and brain. For the most part, the doctors were optimistic about treating the cancer; however they doubted that any treatment would cure the brain cancer.</p> <p> In 2008, Nancy passed away from her fight with breast cancer. She was survived by two young sons; Anthony, six years old and Nicholas, just three and a half. Friends describe Nancy as brave, selfless and strong in her faith. She was an exemplary mother right up until the end.</p> <p> Nancy&rsquo;s parents Norbert and Carmella Poloncarz gladly accepted responsibility for caring for their grandchildren, but they needed some help to secure the future education of the children. In 2009, as a result of the first golf outing in the foundation&rsquo;s short history, the Merrick Family Foundation was able to start a college trust fund for the children. The funds will assist in defraying the cost of college tuition for the young boys.</p> </div> </article> </div> <p> &nbsp;</p>
eos
} )

Post.delete_all

Post.create( {
  :slug => 'my-new-post',
  :title => 'My New Post',
  :active => true,
  :content => <<eos
  Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed ac dolor eget purus sodales interdum in ut purus. Donec imperdiet adipiscing lacus, et pulvinar ligula porttitor sed. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Aenean accumsan tempus tortor faucibus hendrerit. Donec in neque vitae lacus luctus luctus. Phasellus pellentesque imperdiet diam posuere consectetur. Morbi sit amet odio quam, id fringilla justo. Curabitur pulvinar dapibus enim, in pellentesque arcu laoreet nec. Cras egestas velit vitae tortor elementum id semper magna ultricies. Nam eu lorem lorem, vitae blandit mauris. Fusce volutpat arcu eu ligula tincidunt cursus. Quisque gravida lorem id magna accumsan pellentesque.
eos
} )

Post.create( {
  :slug => 'my-new-post-number-2',
  :title => 'My New Post Number 2',
  :active => true,
  :content => <<eos
  Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed ac dolor eget purus sodales interdum in ut purus. Donec imperdiet adipiscing lacus, et pulvinar ligula porttitor sed. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Aenean accumsan tempus tortor faucibus hendrerit. Donec in neque vitae lacus luctus luctus. Phasellus pellentesque imperdiet diam posuere consectetur. Morbi sit amet odio quam, id fringilla justo. Curabitur pulvinar dapibus enim, in pellentesque arcu laoreet nec. Cras egestas velit vitae tortor elementum id semper magna ultricies. Nam eu lorem lorem, vitae blandit mauris. Fusce volutpat arcu eu ligula tincidunt cursus. Quisque gravida lorem id magna accumsan pellentesque.
eos
} )
