CREATE TABLE card (
  ID SERIAL PRIMARY KEY,
  title VARCHAR(50),
  date_of_show VARCHAR(30),
  teaser VARCHAR(50),
  card_image VARCHAR(500)
);

CREATE TABLE playlist (
  ID SERIAL PRIMARY KEY,
  episode SMALLINT,
  name VARCHAR(100),
  artist VARCHAR(100),
  url VARCHAR(1000),
  cover VARCHAR(500),
  lrc VARCHAR(5),
  theme VARCHAR(10),
  album VARCHAR(100),
  post_title TEXT,
  post_content1 TEXT,
  post_content2 TEXT,
  post_content3 TEXT
);

CREATE TABLE messages (
  ID SERIAL PRIMARY KEY,
  name VARCHAR(100),
  email VARCHAR(100),
  message VARCHAR(1000)
);

--episode 1
INSERT INTO card (title, date_of_show, teaser, card_image) 
VALUES (
  'Earth Nights #1!', 
  'May 2025', 
  'Welcome to Earth Nights!', 
  '/assets/earth-one-card-photo.jpg'
);

INSERT INTO playlist (
  episode, 
  name, 
  artist, 
  url, 
  cover, 
  lrc, 
  theme, 
  album, 
  post_title, 
  post_content1
) 
VALUES (
  1,
  'The Opera House',
  'The Olivia Tremor Control',
  'https://dl.dropbox.com/scl/fi/kica3hl0liu7mvsik2pgl/the_opera_house.wav?rlkey=a5zs1dz8eotlq7knptlsl5qrz&st=ipgyl8v4&raw=1',
  'https://dl.dropbox.com/scl/fi/maqfnh0i9x4338qkxwsqf/the_opera_house.jpg?rlkey=coykxxpki98rdwazfz44wk4dy&st=bwewa8eo&raw=1',
  '',
  '#46718b',
  'Music From The Unrealized Film Script: Dusk At Cubist Castle',
  'Welcome to Earth Nights!',
  'Check out the music we have for you this week:'
);

INSERT INTO playlist (episode, name, artist, url, cover, lrc, theme, album, post_title, post_content1, post_content2, post_content3) 
 VALUES (1, 
 'Future Games', 
 'Fleetwood Mac', 
 'https://dl.dropbox.com/scl/fi/yyj1qpit1z9gwrjcr8xg2/future_games.wav?rlkey=k1o4u6i2yu0gbxtlzaelhxmij&st=wbmdam0q&raw=1', 
 'https://dl.dropbox.com/scl/fi/jobzvlqw81ktjlppa7857/future_games.jpg?rlkey=axhqdfmjjlxsteu4qt1eziowq&st=emv7pv9z&raw=1', 
 '', 
 '#46718b', 
 'Future Games', null, null, null, null
 );

INSERT INTO playlist (episode, name, artist, url, cover, lrc, theme, album, post_title, post_content1, post_content2, post_content3) 
 VALUES (1, 
 'New Dad Blues', 
 'Sunwatchers', 
 'https://dl.dropbox.com/scl/fi/dg1foqxyxlge1evsz0leg/new_dad_blues.wav?rlkey=tc80aiq201ad97p2gn9zsp0zm&st=tqc8fftk&raw=1', 
 'https://dl.dropbox.com/scl/fi/2rzivjqfh5rwhektgnycy/new_dad_blues.jpg?rlkey=m4to56jatszu7rndbf6ssw2w9&st=z9e6koq5&raw=1', 
 '', 
 '#46718b', 
 'Illegal Moves', null, null, null, null
 );

INSERT INTO playlist (episode, name, artist, url, cover, lrc, theme, album, post_title, post_content1, post_content2, post_content3) 
 VALUES (1, 
 'Nothing Beats Reality', 
 'Pixel', 
 'https://dl.dropbox.com/scl/fi/6i7ae1xo7fqfdupym3vhi/nothing_beats_reality.wav?rlkey=uz3flje74z1xbxg433n1rr29l&st=qk0zh6b1&raw=1', 
 'https://dl.dropbox.com/scl/fi/knvw33mc3nm5a3jlfjjld/nothing_beats_reality.jpg?rlkey=jccil2hgbj4d88t23emz8l19x&st=uczvb7jh&raw=1', 
 '', 
 '#46718b', 
 'Golden Years', null, null, null, null
 );

INSERT INTO playlist (episode, name, artist, url, cover, lrc, theme, album, post_title, post_content1, post_content2, post_content3) 
 VALUES (1, 
 'City Nights', 
 'Allan Holdsworth', 
 'https://dl.dropbox.com/scl/fi/5yiazj0bmeckmu6wq7kvb/city_nights.wav?rlkey=nkqfj9y9bpe4rmcvkvgl42ace&st=9todqgxm&raw=1', 
 'https://dl.dropbox.com/scl/fi/medaglcaedpjwf01oqy3n/city_nights.jpg?rlkey=ud9hk6igmdq89wk9rlcm5k5lt&st=9q5lao87&raw=1', 
 '', 
 '#46718b', 
 'Secrets', null, null, null, null
 );

INSERT INTO playlist (episode, name, artist, url, cover, lrc, theme, album, post_title, post_content1, post_content2, post_content3) 
 VALUES (1, 
 'リサフランク420 / 現代のコンピュー', 
 'Macintosh Plus', 
 'https://dl.dropbox.com/scl/fi/z3a2nus6kpufb5eqt9yfn/macintosh_plus.wav?rlkey=a6716rjrzg9buozik1zfj7zu4&st=rhogl0pn&raw=1', 
 'https://dl.dropbox.com/scl/fi/n63eo144v5vfhlkn9izgg/macintosh_plus.jpg?rlkey=dq64sm6ry0f8m7yqepjxflce2&st=i764pkou&raw=1', 
 '', 
 '#46718b', 
 'Floral Shoppe', null, null, null, null
 );

INSERT INTO playlist (episode, name, artist, url, cover, lrc, theme, album, post_title, post_content1, post_content2, post_content3) 
 VALUES (1, 
 'New Friends New Foes', 
 'DJ Screw', 
 'https://dl.dropbox.com/scl/fi/08u5dko6r18cgsjs3gevy/new_friends_new_foes.wav?rlkey=xrl2l5azu6lljwd53zi88hare&st=u4g0vp7m&raw=1', 
 'https://dl.dropbox.com/scl/fi/rkxblcs5916at2lbzmaoy/new_friends_new_foes.jpg?rlkey=eqnwve5ro8il08nkgft08gsuy&st=2r91xu0t&raw=1', 
 '', 
 '#46718b', 
 'The Legend', null, null, null, null
 );

INSERT INTO playlist (episode, name, artist, url, cover, lrc, theme, album, post_title, post_content1, post_content2, post_content3) 
 VALUES (1, 
 'Too Much Lean in My Cup', 
 'RP Cola (feat. Mr. Fab)', 
 'https://dl.dropbox.com/scl/fi/lxvqghjf2eeh8a66q2kjb/too_much_lean_in_my_cup.wav?rlkey=whj5go0li1mhlmqe0k8esrq9y&st=56zpvis6&raw=1', 
 'https://dl.dropbox.com/scl/fi/ufqucsr406e5j2axfoztn/too_much_lean_in_my_cup.jpg?rlkey=b870pxn7io1kyxvxay2wfzluw&st=d10jxqwx&raw=1', 
 '', 
 '#46718b', 
 'Act Like U Know', null, null, null, null
 );

 INSERT INTO playlist (episode, name, artist, url, cover, lrc, theme, album, post_title, post_content1, post_content2, post_content3) 
 VALUES (1, 
 'High Castle Rock', 
 'Chris Forsyth & The Solar Motel Band', 
 'https://dl.dropbox.com/scl/fi/q4sa4hl2vqzpqrhxruky9/high_castle_rock.wav?rlkey=ff8h6wg17wrd0erqr10qo0oid&st=bc4pe7sr&raw=1', 
 'https://dl.dropbox.com/scl/fi/uccqtz8r1xl4i37skkj6i/high_castle_rock.jpg?rlkey=60vp3ds15qwcxbp8xkp2169tt&st=nu1zruj5&raw=1', 
 '', 
 '#46718b', 
 'The Rarity of Experience', null, null, null, null
 );

INSERT INTO playlist (episode, name, artist, url, cover, lrc, theme, album, post_title, post_content1, post_content2, post_content3) 
 VALUES (1, 
 'Like A Rolling Stone', 
 'Spirit', 
 'https://dl.dropbox.com/scl/fi/mlbesjipcuy9dqr4y5n7y/like_a_rolling_stone.wav?rlkey=3knru1x5xvv01gex5fikw2ckq&st=6yncxaqx&raw=1', 
 'https://dl.dropbox.com/scl/fi/qyw6h52dfj8g7n296c03q/like_a_rolling_stone.jpg?rlkey=95ddtk49uju2tjonw8t0kr9gs&st=m7qf3074&raw=1', 
 '', 
 '#46718b', 
 'Spirit of ''76', null, null, null, null
 );

 --episode 2
INSERT INTO card (title, date_of_show, teaser, card_image) 
VALUES (
  'Earth Nights #2', 
  'May 2025', 
  'Welcome back to Earth Nights!', 
  '/assets/earth-two-card-photo.jpg'
);


INSERT INTO playlist (
  episode, 
  name, 
  artist, 
  url, 
  cover, 
  lrc, 
  theme, 
  album, 
  post_title, 
  post_content1
) 
VALUES (
  2,
  'Third World Anthem',
  'Jack DeJohnette''s Special Edition',
  'https://dl.dropbox.com/scl/fi/6d69a63yhlv4nhgqmkx2y/third_world_anthem.wav?rlkey=7nk5wyuu8ok6pexjk7n77i5hj&st=6r59rt2d&raw=1',
  'https://dl.dropbox.com/scl/fi/eg38r1kc6g1dg033q4pfa/third_world_anthem.jpg?rlkey=a373dyt2qc0at1uu4eob9kdxu&st=ltf3umxz&raw=1',
  '',
  '#46718b',
  'Album Album',
  'Welcome back to Earth Nights!',
  'Hope you enjoy the second installment of the playlist.'
);

INSERT INTO playlist (episode, name, artist, url, cover, lrc, theme, album, post_title, post_content1, post_content2, post_content3) 
 VALUES (2, 
 'Little Pocket Size Demons', 
 'Henry Threadgill', 
 'https://dl.dropbox.com/scl/fi/1ilzs752ptaka8kjqaogm/little_pocket_size_demons.wav?rlkey=1a7miesxm3ifnnjqq5co8mkgi&st=mw8ymvau&raw=1', 
 'https://dl.dropbox.com/scl/fi/97xh5st1rko413n75qagc/little_pocket_size_demons.jpg?rlkey=k6hx0z9y813333turhj5hks5m&st=ojkuoar7&raw=1', 
 '', 
 '#46718b', 
 'Too Much Sugar for a Dime', null, null, null, null
 );

 INSERT INTO playlist (episode, name, artist, url, cover, lrc, theme, album, post_title, post_content1, post_content2, post_content3) 
 VALUES (2, 
 '21st Century Schizoid Man', 
 'King Crimson', 
 'https://dl.dropbox.com/scl/fi/xpg2kdx6z0n2w90024nze/21st_century_schizoid_man.wav?rlkey=5mep7l4zkn57ir5akog9la1hr&st=oplmos7s&raw=1', 
 'https://dl.dropbox.com/scl/fi/e95tv9i1phtoyrsernxbm/21st_century_schizoid_man.jpg?rlkey=m7zjh51ig1izvkmatuaiwtspq&st=l518tey6&raw=1', 
 '', 
 '#46718b', 
 'In The Court of the Crimson King', null, null, null, null
 );

  INSERT INTO playlist (episode, name, artist, url, cover, lrc, theme, album, post_title, post_content1, post_content2, post_content3) 
 VALUES (2, 
 'Inca Roads', 
 'Frank Zappa', 
 'https://dl.dropbox.com/scl/fi/bfsgndtk728k7uu9px60v/inca_roads.wav?rlkey=qqp1hqhkmwzor7p4ugc79e8s2&st=krxjz0ud&raw=1', 
 'https://dl.dropbox.com/scl/fi/kjdzjrnoczggbp7m9ebej/inca_roads.jpg?rlkey=pctruuqkwbtby85uzzd9jwjtl&st=rspdxa1z&raw=1', 
 '', 
 '#46718b', 
 'One Size Fits All', null, null, null, null
 );

   INSERT INTO playlist (episode, name, artist, url, cover, lrc, theme, album, post_title, post_content1, post_content2, post_content3) 
 VALUES (2, 
 'Go Marilee', 
 'The Marbles', 
 'https://dl.dropbox.com/scl/fi/381s0tjalv2jdkr44lc7o/go_marilee.wav?rlkey=dpqtc6eogqsk788cnlrr1qxx5&st=50krywe0&raw=1', 
 'https://dl.dropbox.com/scl/fi/kg2dlqjfd3uf87clqvmzp/go_marilee.jpg?rlkey=yczv3mhkxqw1ra4i5mevhxjyh&st=ujdrckua&raw=1', 
 '', 
 '#46718b', 
 'Pyramid Landing and Other Favorites', null, null, null, null
 );

    INSERT INTO playlist (episode, name, artist, url, cover, lrc, theme, album, post_title, post_content1, post_content2, post_content3) 
 VALUES (2, 
 'Hooray for Tuesday', 
 'The Minders', 
 'https://dl.dropbox.com/scl/fi/ks3en8ec7pv33zdjoebgx/hooray_for_tuesday.wav?rlkey=fpnactnszciugzglzp4v6fpws&st=w9pxm5sk&raw=1', 
 'https://dl.dropbox.com/scl/fi/strjz7mi36agcah7jdrrj/hooray_for_tuesday.jpg?rlkey=vl1w5rzr1x1hrkwx3efosj5e9&st=x8j6kdg7&raw=1',
 '', 
 '#46718b', 
 'Hooray for Tuesday', 
 null, 
 null, 
 null, 
 null
 );

INSERT INTO playlist (episode, name, artist, url, cover, lrc, theme, album, post_title, post_content1, post_content2, post_content3) 
 VALUES (2, 
 'Lucky Charm', 
 'The Apples in Stereo', 
 'https://dl.dropbox.com/scl/fi/kji37sew6oxoj141vcvsq/lucky_charm.wav?rlkey=5392e81hhplfjaix1dwle1q5z&st=aakxgjxh&raw=1', 
 'https://dl.dropbox.com/scl/fi/3zo4dy0bcc1aechi3xkft/lucky_charm.jpg?rlkey=txqpd6rvtkju79q1f60x1oc3p&st=e3leo0sw&raw=1',
 '', 
 '#46718b', 
 'Fun Trick Noisemaker', null, null, null, null
 );

 INSERT INTO playlist (episode, name, artist, url, cover, lrc, theme, album, post_title, post_content1, post_content2, post_content3) 
 VALUES (2, 
 'After Midnight', 
 'The Jerry Garcia Band', 
 'https://dl.dropbox.com/scl/fi/ll2bmajry19tvchwey4zp/after_midnight.wav?rlkey=dgmonfwtf9akpzbdihx6y42nq&st=8i4cf2mb&raw=1', 
 'https://dl.dropbox.com/scl/fi/rcveq97cb67e4pskb14ox/after_midnight.jpg?rlkey=2z5u12jinipkoiox1n2hailna&st=1tkbv26h&raw=1',
 '', 
 '#46718b', 
 'After Midnight: Kean College, 2/28/80', null, null, null, null
 );

INSERT INTO playlist (episode, name, artist, url, cover, lrc, theme, album, post_title, post_content1, post_content2, post_content3) 
 VALUES (2, 
 'Pinto', 
 'Boldy James', 
 'https://dl.dropbox.com/scl/fi/xkfz9e600b2v0cyvtqseh/pinto.wav?rlkey=rvcj37dg2z64eei38p0rrpc2m&st=rvlgc1d6&raw=1', 
 'https://dl.dropbox.com/scl/fi/fmux4hbnar7h8qoijvdpy/pinto.jpg?rlkey=6yt75f0sex1tebrudc7bveqfn&st=nabllth3&raw=1',
 '', 
 '#46718b', 
 'The Price Of Tea In China', null, null, null, null
 );

 INSERT INTO playlist (episode, name, artist, url, cover, lrc, theme, album, post_title, post_content1, post_content2, post_content3) 
 VALUES (2, 
 'Brown Rice', 
 'Don Cherry', 
 'https://dl.dropbox.com/scl/fi/54ursn67wbxsidlfm13gw/brown_rice.wav?rlkey=q6j7n3qb4hzp06khnzn2xwsqj&st=ub4z5e1o&raw=1', 
 'https://dl.dropbox.com/scl/fi/ywp1u6dbjcgmipuibwzth/brown_rice.jpg?rlkey=rcg04gd5ajvujp8uoo2vd74dg&st=zv2gyouf&raw=1',
 '', 
 '#46718b', 
 'Brown Rice', null, null, null, null
 );

 
