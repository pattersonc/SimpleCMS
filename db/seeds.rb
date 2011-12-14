# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


 # Create a default user
if(!AdminUser.where(:email => 'admin@example.com'))
  AdminUser.create!(:email => 'admin@example.com', :password => 'password', :password_confirmation => 'password')
end

Page.delete_all

Page.create( {
  :slug => 'index',
  :display_order => 1,
  :title => 'Home',
  :content => <<eos
  <div id="spinner">
  	<img src="/assets/slider-1.jpg">
  </div>
  <div id="article-wrapper">
  <article>
  	<h2>Welcome</h2>
  	<div class="by-line"></div>
  	<div class="date"></div>
  	<div class="entry-content">
  		Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed ac dolor eget purus sodales interdum in ut purus. Donec imperdiet adipiscing lacus, et pulvinar ligula porttitor sed. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Aenean accumsan tempus tortor faucibus hendrerit. Donec in neque vitae lacus luctus luctus. Phasellus pellentesque imperdiet diam posuere consectetur. Morbi sit amet odio quam, id fringilla justo. Curabitur pulvinar dapibus enim, in pellentesque arcu laoreet nec. Cras egestas velit vitae tortor elementum id semper magna ultricies. Nam eu lorem lorem, vitae blandit mauris. Fusce volutpat arcu eu ligula tincidunt cursus. Quisque gravida lorem id magna accumsan pellentesque.

  		Aliquam fermentum, leo nec facilisis condimentum, lacus ante viverra velit, lobortis porta mauris arcu id sapien. Maecenas sagittis felis vel urna consequat ut lacinia leo pharetra. Donec a nisl justo. Vestibulum sed massa urna. Duis pharetra placerat mi sed posuere. Nunc viverra, nisi pharetra pulvinar vulputate, lacus velit bibendum lectus, in sodales ipsum nibh a augue. Nullam ut enim id eros dapibus pretium sed mollis enim. Nulla facilisi.

  		Pellentesque a semper erat. Proin sodales posuere dui, sed iaculis nisi consequat ut. Aenean diam dui, semper in pulvinar a, pretium in tortor. Cras ultrices euismod enim, at hendrerit erat vestibulum vitae. Quisque gravida auctor ante a scelerisque. Aliquam erat volutpat. Nulla quis sem purus. Nullam sollicitudin, tellus id venenatis vulputate, nunc tellus tempor dolor, eget vestibulum lorem orci gravida tellus. Curabitur consectetur bibendum iaculis. Etiam tincidunt lacus et est venenatis nec convallis eros pellentesque. Integer porttitor consequat erat, ac rutrum diam interdum nec. Integer sollicitudin, sem nec luctus imperdiet, nisi risus commodo nibh, non ornare enim nisl at orci. Phasellus felis lorem, tempus quis imperdiet a, accumsan vel lorem. Duis interdum lacus sit amet erat blandit adipiscing.
  	</div>
  </article>
  </div>

eos
} )

Page.create( {
  :slug => 'events',
  :display_order => 1,
  :title => 'Events',
  :content => <<eos
  <div id="spinner">
  	<img src="/assets/slider-1.jpg">
  </div>
  <div id="article-wrapper">
  <article>
  	<h2>Events</h2>
  	<div class="by-line"></div>
  	<div class="date"></div>
  	<div class="entry-content">
  		Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed ac dolor eget purus sodales interdum in ut purus. Donec imperdiet adipiscing lacus, et pulvinar ligula porttitor sed. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Aenean accumsan tempus tortor faucibus hendrerit. Donec in neque vitae lacus luctus luctus. Phasellus pellentesque imperdiet diam posuere consectetur. Morbi sit amet odio quam, id fringilla justo. Curabitur pulvinar dapibus enim, in pellentesque arcu laoreet nec. Cras egestas velit vitae tortor elementum id semper magna ultricies. Nam eu lorem lorem, vitae blandit mauris. Fusce volutpat arcu eu ligula tincidunt cursus. Quisque gravida lorem id magna accumsan pellentesque.

  		Aliquam fermentum, leo nec facilisis condimentum, lacus ante viverra velit, lobortis porta mauris arcu id sapien. Maecenas sagittis felis vel urna consequat ut lacinia leo pharetra. Donec a nisl justo. Vestibulum sed massa urna. Duis pharetra placerat mi sed posuere. Nunc viverra, nisi pharetra pulvinar vulputate, lacus velit bibendum lectus, in sodales ipsum nibh a augue. Nullam ut enim id eros dapibus pretium sed mollis enim. Nulla facilisi.

  		Pellentesque a semper erat. Proin sodales posuere dui, sed iaculis nisi consequat ut. Aenean diam dui, semper in pulvinar a, pretium in tortor. Cras ultrices euismod enim, at hendrerit erat vestibulum vitae. Quisque gravida auctor ante a scelerisque. Aliquam erat volutpat. Nulla quis sem purus. Nullam sollicitudin, tellus id venenatis vulputate, nunc tellus tempor dolor, eget vestibulum lorem orci gravida tellus. Curabitur consectetur bibendum iaculis. Etiam tincidunt lacus et est venenatis nec convallis eros pellentesque. Integer porttitor consequat erat, ac rutrum diam interdum nec. Integer sollicitudin, sem nec luctus imperdiet, nisi risus commodo nibh, non ornare enim nisl at orci. Phasellus felis lorem, tempus quis imperdiet a, accumsan vel lorem. Duis interdum lacus sit amet erat blandit adipiscing.
  	</div>
  </article>
  </div>

eos
} )

Page.create( {
  :slug => 'beneficiaries',
  :display_order => 3,
  :title => 'beneficiaries',
  :content => <<eos
  <div id="spinner">
  	<img src="/assets/slider-1.jpg">
  </div>
  <div id="article-wrapper">
  <article>
  	<h2>Beneficiaries</h2>
  	<div class="by-line"></div>
  	<div class="date"></div>
  	<div class="entry-content">
  		Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed ac dolor eget purus sodales interdum in ut purus. Donec imperdiet adipiscing lacus, et pulvinar ligula porttitor sed. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Aenean accumsan tempus tortor faucibus hendrerit. Donec in neque vitae lacus luctus luctus. Phasellus pellentesque imperdiet diam posuere consectetur. Morbi sit amet odio quam, id fringilla justo. Curabitur pulvinar dapibus enim, in pellentesque arcu laoreet nec. Cras egestas velit vitae tortor elementum id semper magna ultricies. Nam eu lorem lorem, vitae blandit mauris. Fusce volutpat arcu eu ligula tincidunt cursus. Quisque gravida lorem id magna accumsan pellentesque.

  		Aliquam fermentum, leo nec facilisis condimentum, lacus ante viverra velit, lobortis porta mauris arcu id sapien. Maecenas sagittis felis vel urna consequat ut lacinia leo pharetra. Donec a nisl justo. Vestibulum sed massa urna. Duis pharetra placerat mi sed posuere. Nunc viverra, nisi pharetra pulvinar vulputate, lacus velit bibendum lectus, in sodales ipsum nibh a augue. Nullam ut enim id eros dapibus pretium sed mollis enim. Nulla facilisi.

  		Pellentesque a semper erat. Proin sodales posuere dui, sed iaculis nisi consequat ut. Aenean diam dui, semper in pulvinar a, pretium in tortor. Cras ultrices euismod enim, at hendrerit erat vestibulum vitae. Quisque gravida auctor ante a scelerisque. Aliquam erat volutpat. Nulla quis sem purus. Nullam sollicitudin, tellus id venenatis vulputate, nunc tellus tempor dolor, eget vestibulum lorem orci gravida tellus. Curabitur consectetur bibendum iaculis. Etiam tincidunt lacus et est venenatis nec convallis eros pellentesque. Integer porttitor consequat erat, ac rutrum diam interdum nec. Integer sollicitudin, sem nec luctus imperdiet, nisi risus commodo nibh, non ornare enim nisl at orci. Phasellus felis lorem, tempus quis imperdiet a, accumsan vel lorem. Duis interdum lacus sit amet erat blandit adipiscing.
  	</div>
  </article>
  </div>
eos
} )

Post.delete_all

Post.create( {
  :slug => 'beneficiaries',
  :title => 'beneficiaries',
  :active => true,
  :content => <<eos
  Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed ac dolor eget purus sodales interdum in ut purus. Donec imperdiet adipiscing lacus, et pulvinar ligula porttitor sed. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Aenean accumsan tempus tortor faucibus hendrerit. Donec in neque vitae lacus luctus luctus. Phasellus pellentesque imperdiet diam posuere consectetur. Morbi sit amet odio quam, id fringilla justo. Curabitur pulvinar dapibus enim, in pellentesque arcu laoreet nec. Cras egestas velit vitae tortor elementum id semper magna ultricies. Nam eu lorem lorem, vitae blandit mauris. Fusce volutpat arcu eu ligula tincidunt cursus. Quisque gravida lorem id magna accumsan pellentesque.
eos
} )
