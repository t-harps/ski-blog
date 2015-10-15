admin = Admin.create! :email => 'no_one_likes_you@hotmail.co.uk',
 											:password => ENV['PASSWORD'], 
 											:password_confirmation => ENV['PASSWORD']

post1 = Post.create! :title => 'The Greatest Games of S.K.A.T.E on Snow', 
             :content => "Featuring Noah Albadejo and Luka Melloni, \'El Classico\' is one of the most stylish and closely fought games of S.K.A.T.E I've seen, plus E-dollo is the ref. Brought to you by SLVSH, give it a watch.", 
             :video => 'http://player.vimeo.com/video/124771287', 
             :tag_list => 'video, park, SLVSH, Albadejo, Melloni, Harlaut, S.K.A.T.E'
post2 = Post.create! :title => 'The Greatest Games of S.K.A.T.E on Snow', 
             :content => 'Two absolute wizards going head to head on giant features, just an insane game. Vinnie Cash and Crazy Karl throwing down.', 
             :video => 'https://www.youtube.com/embed/jaTHnu0uX5o?rel=0', 
             :tag_list => 'video, park, S.K.A.T.E, Gagnier, Fostvedt, Vars'
post3 = Post.create! :title => 'Jon Brogan', 
             :content => 'Afterbang, that is all', 
             :video => 'https://www.youtube.com/embed/U4EyCV_meuo?rel=0', 
             :tag_list => 'video, park, Brogan, Oldschool, Afterbang'
post4 = Post.create! :title => 'Leo T Shreds Las Leñas', 
             :content => 'Leo Taillefer is a mad frenchman, in the best way possible. The edit that made him one of my favourite skiers.', 
             :video => 'https://www.youtube.com/embed/LdrKRVXCWPM?rel=0', 
             :tag_list => 'video, big mountain, Taillefer, powder, Las Lenas'
post5 = Post.create! :title => 'Windells 2013', 
             :content => 'One of my favourite Windells edits, everyone kills it and Keefer closes it out in classic Keefer style.', 
             :video => 'https://player.vimeo.com/video/72456378', 
             :tag_list => 'video, park, Windells, Wallisch, Keefer, ABM, Carlson, Jossi'
post6 = Post.create! :title => 'One Of Those Days', 
             :content => "I don't need to describe this one, you've seen it before, but that doesn't mean you shouldn't watch it again.", 
             :video => 'https://www.youtube.com/embed/ygxufRprWpY?rel=0', 
             :tag_list => 'video, resort, Candide, POV'
post7 = Post.create! :title => 'A boring text post', 
             :content => "Some text.", 
             :tag_list => 'text'                                  
post8 = Post.create! :title => 'Delorme', 
             :content => "Doing his thing", 
             :remote_image_url => 'https://i.warosu.org/data/fa/img/0075/26/1388673940214.png', 
             :tag_list => 'image, Delorme, park'

post6.created_at = "2015-09-12 12:25:01"
post6.save 
post3.created_at = "2015-09-20 10:42:51"
post3.save 
post8.created_at = "2015-08-28 14:15:29"
post8.save          