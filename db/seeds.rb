Dust::Role.create([{:name => "admin"}, {:name => "moderator"}])
Dust::User.create(:username => 'admin', :password => "secret", :password_confirmation => "secret", :email => 'admin@dust.com', :role => Dust::Role.find_by_name("admin"))

Dust::Page.create([{:nav_link => 'Welcome', :meta_title => "Welcome", :active => 1, :filename => "welcome"}])

Dust::Menu.create({:title => "Main Menu", :nestable => "nest"})
Dust::Menu.create({:title => "Admin Menu", :nestable => "no-nest"})

Dust::MenuItem.create([
  {:title => "Home", :url => "/", :menu_id => 1}
])

Dust::MenuItem.create([
	{:title => "Pages", :url    => "/dust/pages", :menu_id          => 2},
	{:title => "Blocks", :url   => "/dust/blocks", :menu_id         => 2},
	{:title => "Albums", :url   => "/dust/gallery/albums", :menu_id => 2},
	{:title => "Posts", :url    => "/dust/posts", :menu_id          => 2},
	{:title => "Contacts", :url => "/dust/contacts", :menu_id       => 2},
	{:title => "Roles", :url    => "/dust/roles", :menu_id          => 2},
	{:title => "Users", :url    => "/dust/users", :menu_id          => 2},
	{:title => "Menus", :url    => "/dust/menus", :menu_id          => 2}
])

Dust::SiteWide.create([
  {:name => "site url", :value               => "www.newsite.com", :category                              => "site info"},
  {:name => "default description", :value    => "welcome to our new website", :category                   => "site info"},
  {:name => "default recipiant", :value      => "admin@dust.com", :category                               => "contact info"},
  {:name => "default recipiant name", :value => "ross nelson", :category                                  => "contact info"},
  {:name => "address", :value                => "12164 w. wadsworth rd.\nbeach park, il 60087", :category => "location info"},
  {:name => "phone", :value                  => "847.244.2878", :category                                 => "location info"}
])
