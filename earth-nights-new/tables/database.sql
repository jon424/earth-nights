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
  'Earth Nights #1', 
  'February 2024', 
  'Welcome back to Earth Nights!', 
  'https://cdn.technologynetworks.com/tn/images/thumbs/jpeg/640_360/the-psychedelic-revolution-in-psychiatry-333007.jpg'
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
  'Termination Dust',
  'Earth Nights',
  'https://dl.dropboxusercontent.com/scl/fi/dwn4clhzkjyzmhm418kzb/Termination-Dust.wav?rlkey=10e528l9lacxxahiucn2ocix0&raw=1',
  'https://dl.dropboxusercontent.com/scl/fi/s3hdmhjknhdjoqqxsf0iw/Termination-Dust-Cover1.JPG?rlkey=knv6tvh9bgav2zzti1p3bjcq9&raw=1',
  '',
  '#46718b',
  'Earth Nights Sessions',
  'Welcome Back to Earth Nights!',
  'We are back with new music and a fresh start.'
);

 INSERT INTO playlist (episode, name, artist, url, cover, lrc, theme, album, post_title, post_content1, post_content2, post_content3) VALUES (1, 'Race For The Prize', 'The Flaming Lips', 'https://dl.dropboxusercontent.com/scl/fi/dwn4clhzkjyzmhm418kzb/Termination-Dust.wav?rlkey=10e528l9lacxxahiucn2ocix0&raw=1', 'https://dl.dropbox.com/s/ob9pqwjp2q4yj2g/soft_bulletin.jpg', '', '#46718b', 'The Soft Bulletin', null, null, null, null
 );

-- INSERT INTO playlist (episode, name, artist, url, cover, lrc, theme, album, post_title, post_content1, post_content2, post_content3) VALUES (1, 'Race For The Prize', 'The Flaming Lips', 'https://dl.dropboxusercontent.com/scl/fi/dwn4clhzkjyzmhm418kzb/Termination-Dust.wav?rlkey=10e528l9lacxxahiucn2ocix0&raw=1, 'https://dl.dropbox.com/s/ob9pqwjp2q4yj2g/soft_bulletin.jpg', '', '#46718b', 'The Soft Bulletin', null, null, null, null
-- );

-- INSERT INTO playlist (episode, name, artist, url, cover, lrc, theme, album, post_title, post_content1, post_content2, post_content3) VALUES (1, 'The Opera House', 'The Olivia Tremor Control', 'https://dl.dropbox.com/s/dwn4clhzkjyzmhm418kzb/Termination-Dust.wav', 'https://dl.dropbox.com/s/15yusr42dogvi0t/dusk_at_cubist_castle.jpg', '', '#46718b', 'Music From The Unrealized Film Script: Dusk At Cubist Castle', 'Welcome to The First Earth Nights Playlist!', 'We begin the series with a playlist full of great music to enjoy. There will (hopefully) be a new episode every week.', 'Thanks so much for listening... Stay safe out there.', 'Hope you enjoy...'
-- );

-- INSERT INTO playlist (episode, name, artist, url, cover, lrc, theme, album, post_title, post_content1, post_content2, post_content3) VALUES (1, 'Race For The Prize', 'The Flaming Lips', 'https://dl.dropbox.com/s/e4pbxbn7fjs2w8t/01%20Race%20For%20The%20Prize%20%28Remix%29.m4a', 'https://dl.dropbox.com/s/ob9pqwjp2q4yj2g/soft_bulletin.jpg', '', '#46718b', 'The Soft Bulletin', null, null, null, null
-- );


-- INSERT INTO playlist (episode, name, artist, url, cover, lrc, theme, album, post_title, post_content1, post_content2, post_content3) VALUES (1, 'You Can''t Miss What You Can''t Measure', 'Funkadelic', 'https://dl.dropbox.com/s/po785swp3fekegx/You%20Can%27t%20Miss%20What%20You%20Can%27t%20Measure%20-%20Funkadelic.wav', 'https://dl.dropbox.com/s/5p5mx8gjeseolxv/cosmic_slop.jpeg', '', '#46718b', 'Cosmic Slop', null, null, null, null
-- );

-- INSERT INTO playlist (episode, name, artist, url, cover, lrc, theme, album, post_title, post_content1, post_content2, post_content3) VALUES (1, 'Holland, 1945', 'Neutral Milk Hotel', 'https://dl.dropbox.com/s/7s296vzeo3cumpn/06%20Holland%2C%201945.m4a', 'https://dl.dropbox.com/s/64oks44ba3sfoq9/in%20the%20aeroplane....jpeg', '', '#46718b', 'In The Aeroplane Over The Sea', null, null, null, null
-- );

-- INSERT INTO playlist (episode, name, artist, url, cover, lrc, theme, album, post_title, post_content1, post_content2, post_content3) VALUES (1, 'Future Games', 'Fleetwood Mac', 'https://dl.dropbox.com/s/kccqcc61wkrzdoh/Future%20Games%20-%20Fleetwood%20Mac.wav', 'https://dl.dropbox.com/s/03ec4909ewrtcx2/future%20games.jpeg', '', '#46718b', 'Future Games', null, null, null, null
-- );

-- INSERT INTO playlist (episode, name, artist, url, cover, lrc, theme, album, post_title, post_content1, post_content2, post_content3) VALUES (1, 'New Dad Blues', 'Sunwatchers', 'https://dl.dropbox.com/s/629te0mjujqgtr5/New%20Dad%20Blues%20-%20Sunwatchers.wav', 'https://dl.dropbox.com/s/lpnt6amfxuhlb9y/illegal_moves.jpeg', '', '#46718b', 'Illegal Moves', null, null, null, null
-- );

-- INSERT INTO playlist (episode, name, artist, url, cover, lrc, theme, album, post_title, post_content1, post_content2, post_content3) VALUES (1, 'Nothing Beats Reality', 'Pixel', 'https://dl.dropbox.com/s/vnzbh5czt2k92od/Pixel%20-%20Nothing%20Beats%20Reality.wav', 'https://dl.dropbox.com/s/gvuu1cne5kf0li6/pixel_golden_years.jpg', '', '#46718b', 'Golden Years', null, null, null, null
-- );

-- INSERT INTO playlist (episode, name, artist, url, cover, lrc, theme, album, post_title, post_content1, post_content2, post_content3) VALUES (1, 'City Nights', 'Allan Holdsworth', 'https://dl.dropbox.com/s/p104rmp1nhhwfg1/Allan%20Holdsworth%20-%20City%20Nights.wav', 'https://dl.dropbox.com/s/itewf04fp0532dl/secrets.jpeg', '', '#46718b', 'Secrets', null, null, null, null
-- );

-- INSERT INTO playlist (episode, name, artist, url, cover, lrc, theme, album, post_title, post_content1, post_content2, post_content3) VALUES (1, 'Hang Up Your Hang Ups', 'Lettuce', 'https://dl.dropbox.com/s/1jff5x5f9wgrrwy/hang%20up%20your%20hangups%20-%20lettuce.wav', 'https://dl.dropbox.com/s/2mitu6dkmlxz747/lettuce_outta_here.jpeg', '', '#46718b', 'Outta Here', null, null, null, null
-- );

-- INSERT INTO playlist (episode, name, artist, url, cover, lrc, theme, album, post_title, post_content1, post_content2, post_content3) VALUES (1, 'Lisa Frank 420 / Modern Computing" (リサフランク420 / 現代のコンピュー Risa Furanku 420 / Gendai no Konpyū)', 'Macintosh Plus', 'https://dl.dropbox.com/s/5r9ieohu3pjrqub/macintosh3d%20-%20lisa%20frank%20420.wav', 'https://dl.dropbox.com/s/au9vyqvsjig9akf/floral_shoppe.jpeg', '', '#46718b', 'Floral Shoppe', null, null, null, null
-- );

-- INSERT INTO playlist (episode, name, artist, url, cover, lrc, theme, album, post_title, post_content1, post_content2, post_content3) VALUES (1, 'New Friends New Foes', 'DJ Screw', 'https://dl.dropbox.com/s/2z8usdqxj7h7hy1/new%20friends%20new%20foes%20-%20dj%20screw.wav', 'https://dl.dropbox.com/s/qt7cdhhu5o82tvu/the_legend.jpeg', '', '#46718b', 'The Legend', null, null, null, null
-- );

-- INSERT INTO playlist (episode, name, artist, url, cover, lrc, theme, album, post_title, post_content1, post_content2, post_content3) VALUES (1, 'Servin A Deuce', 'DJ Screw (feat. 20-2-Life & Klondike Kat)', 'https://dl.dropbox.com/s/z8czs9bwv4yxgg2/servin%20a%20deuce%20-%20dj%20screw.wav', 'https://dl.dropbox.com/s/mqebmzq803pzvfj/3-%27n-the-mornin%27.jpeg', '', '#46718b', '3 ''n the Mornin'' - Part Two', null, null, null, null
-- );

-- INSERT INTO playlist (episode, name, artist, url, cover, lrc, theme, album, post_title, post_content1, post_content2, post_content3) VALUES (1, 'Too Much Lean in My Cup', 'RP Cola (feat. Mr. Fab)', 'https://dl.dropbox.com/s/xwr32zkzw2tb2vu/too%20much%20lean%20in%20my%20cup%20-%20rp%20cola.wav', 'https://dl.dropbox.com/s/5gfsmx32akjzoog/rpcola_act%20like%20u%20know.jpeg', '', '#46718b', 'Act Like U Know', null, null, null, null
-- );

-- INSERT INTO playlist (episode, name, artist, url, cover, lrc, theme, album, post_title, post_content1, post_content2, post_content3) VALUES (1, 'High Castle Rock', 'Chris Forsyth & The Solar Motel Band', 'https://dl.dropbox.com/s/yr4lqoi77eqc9br/high%20castle%20rock%20-%20chris%20forsyth.wav', 'https://dl.dropbox.com/s/7zjh7qbccmz4au1/the%20rarity%20of%20experience.jpeg', '', '#46718b', 'The Rarity of Experience', null, null, null, null
-- );

-- INSERT INTO playlist (episode, name, artist, url, cover, lrc, theme, album, post_title, post_content1, post_content2, post_content3) VALUES (1, 'Like A Rolling Stone', 'Spirit', 'https://dl.dropbox.com/s/6pk2gxgl8b6rgpe/like%20a%20rolling%20stone%20-%20spirit.wav', 'https://dl.dropbox.com/s/8vbkd9a9fhpi4jp/spirit%20of%2076.jpeg', '', '#46718b', 'Spirit of ''76', null, null, null, null
-- );

-- INSERT INTO playlist (episode, name, artist, url, cover, lrc, theme, album, post_title, post_content1, post_content2, post_content3) VALUES (1, 'Everybody Daylight', 'Brightblack Morning Light', 'https://dl.dropbox.com/s/1lfok172g8owpp3/everybody%20daylight%20-%20brightblack%20morning%20light.wav', 'https://dl.dropbox.com/s/56peosoncr85keo/brightblack%20morning%20light.jpeg', '', '#46718b', 'Brightblack Morning Light', null, null, null, null
-- );

-- INSERT INTO playlist (episode, name, artist, url, cover, lrc, theme, album, post_title, post_content1, post_content2, post_content3) VALUES (1, 'Great Expectations', 'Miles Davis', 'https://dl.dropbox.com/s/e3og6dljke1ty4m/2-03%20Great%20Expectations.m4a', 'https://dl.dropbox.com/s/myj9t61cq44m0c7/complete%20bitches%20brew%20sessions.jpeg', '', '#46718b', 'The Complete Bitches Brew Sessions', null, null, null, null
-- );







-- -- <div><p>This is THE SECOND episode...</p></div>'
-- INSERT INTO card (title, date_of_show, teaser, card_image) VALUES ('Earth Nights #2', 'May 1, 2020', 'Welcome to the second show!!', 'https://cdn.technologynetworks.com/tn/images/thumbs/jpeg/640_360/can-psychedelic-drugs-heal-307439.jpg');

-- INSERT INTO playlist (episode, name, artist, url, cover, lrc, theme, album, post_title, post_content1, post_content2, post_content3) VALUES (2, 'Third World Anthem', 'Jack DeJohnette''s Special Edition', 'https://dl.dropbox.com/s/nx95zak9bxew1bv/01%20Third%20World%20Anthem.mp3', 'https://dl.dropbox.com/s/2t944i9gv41fi8b/albumalbum.jpg', '', '#46718b', 'Album Album (1984)', 'We Are Back With Episode Two!', 'Thanks for being here - enjoy the music. If you happen to be listening on a mobile device, it might help to update your display settings to never let your device go to sleep, so the playlist can keep going without any clicking on your part. If you are listening on a desktop/laptop, you''re all good.', 'We kick things off right this week with the best Jack DeJohnette tune of ALL TIME, followed by some more far out jazz and prog-rock, before sliding into the psychedelic sounds of some great bands from the Elephant 6 Collective (Marbles, The Minders, of Montreal, and The Apples in Stereo). We have some excellent rap tracks from Houston (Devin The Dude, Scarface, Too Much Trouble) and Detroit (Boldy James, Isaac Castor). Then we got some vaporwave, followed by a powerful track by virtuoso drummer G. Calvin Weston (remember him from Ornette Coleman''s Prime Time band from the 80''s?), and a not-to-be-missed super slooowed down version of The Velvet Underground''s infamous one-take masterjam ''Sister Ray''', 'Click on the Contact button below and get in touch! Hope you enjoy. See you next week!'
-- );

-- INSERT INTO playlist (episode, name, artist, url, cover, lrc, theme, album, post_title, post_content1, post_content2, post_content3) VALUES (2, 'Don''t Turn Around', 'Henry Threadgill & Make a Move', 'https://dl.dropbox.com/s/jmzqvl7vp6pl2tv/threadgill%20don%27t.wav', 'https://dl.dropbox.com/s/qho6h4we62tr6ho/everybodys%20mouths.jpg', '', '#46718b', 'Everybodys Mouth''s a Book (2001)', null, null, null, null
-- );

-- INSERT INTO playlist (episode, name, artist, url, cover, lrc, theme, album, post_title, post_content1, post_content2, post_content3) VALUES (2, '21st Century Schizoid Man', 'King Crimson', 'https://dl.dropbox.com/s/4h65srw119up68v/01%2021st%20Century%20Schizoid%20Man%20Including%20Mirrors.wav', 'https://dl.dropbox.com/s/70pzobxv7fdqjy5/kingcrim.jpeg', '', '#46718b', 'In the Court of the Crimson King (1969)', null, null, null, null
-- );

-- INSERT INTO playlist (episode, name, artist, url, cover, lrc, theme, album, post_title, post_content1, post_content2, post_content3) VALUES (2, 'Inca Roads', 'Frank Zappa and the Mothers of Invention', 'https://dl.dropbox.com/s/1pvdwemy8glnaw6/01%20Inca%20Roads.m4a', 'https://dl.dropbox.com/s/5ohd9u4qe4hd1w7/zappa.jpg', '', '#46718b', 'One Size Fits All (1975)', null, null, null, null
-- );

-- INSERT INTO playlist (episode, name, artist, url, cover, lrc, theme, album, post_title, post_content1, post_content2, post_content3) VALUES (2, 'Go Marilee', 'Marbles', 'https://dl.dropbox.com/s/mbk7pe8fe4wvwp2/marbles.wav', 'https://dl.dropbox.com/s/a1pb3hnbungiscm/marbles.jpg', '', '#46718b', 'Pyramid Landing (and Other Favorites) (1997)', null, null, null, null
-- );

-- INSERT INTO playlist (episode, name, artist, url, cover, lrc, theme, album, post_title, post_content1, post_content2, post_content3) VALUES (2, 'Hooray For Tuesday', 'The Minders', 'https://dl.dropbox.com/s/kg9jkydl2tvrha7/minders.wav', 'https://dl.dropbox.com/s/r2vaga96rsd6boc/minders.jpg', '', '#46718b', 'Hooray for Tuesday (1998)', null, null, null, null
-- );

-- INSERT INTO playlist (episode, name, artist, url, cover, lrc, theme, album, post_title, post_content1, post_content2, post_content3) VALUES (2, 'Gronlandic Edit', 'of Montreal', 'https://dl.dropbox.com/s/jv31dn6l46cu3fa/gronlandic%20edit.wav', 'https://dl.dropbox.com/s/3c4mltsraqv72py/hissing.png', '', '#46718b', 'Hissing Fauna, Are You the Destroyer? (2007)', null, null, null, null
-- );

-- INSERT INTO playlist (episode, name, artist, url, cover, lrc, theme, album, post_title, post_content1, post_content2, post_content3) VALUES (2, 'Lucky Charm', 'The Apples in Stereo', 'https://dl.dropbox.com/s/sjpm98kao7cshx2/09%20Lucky%20Charm.m4a', 'https://dl.dropbox.com/s/uzmb4yka8vu64t2/funtrick.jpg', '', '#46718b', 'Fun Trick Noisemaker (1995)', null, null, null, null
-- );

-- INSERT INTO playlist (episode, name, artist, url, cover, lrc, theme, album, post_title, post_content1, post_content2, post_content3) VALUES (2, 'Inside Your Mind', 'The Fool', 'https://dl.dropbox.com/s/4adaytvqeozumkn/09%20Inside%20You%20Mind.m4a', 'https://dl.dropbox.com/s/qqib3sqwgghel2y/fool.jpeg', '', '#46718b', 'The Fool (1968)', null, null, null, null
-- );

-- INSERT INTO playlist (episode, name, artist, url, cover, lrc, theme, album, post_title, post_content1, post_content2, post_content3) VALUES (2, 'After Midnight', 'The Jerry Garcia Band', 'https://dl.dropbox.com/s/q9x006p66w4fj6g/jerry-after%20midnight.wav', 'https://dl.dropbox.com/s/x5tqh269p1f11qv/jerrygarcia.jpg', '', '#46718b', 'After Midnight: Kean College, 2/28/80 (2004)', null, null, null, null
-- );

-- INSERT INTO playlist (episode, name, artist, url, cover, lrc, theme, album, post_title, post_content1, post_content2, post_content3) VALUES (2, 'All You Need', 'Devin The Dude', 'https://dl.dropbox.com/s/nxoda5yvbr52wq6/devin%20the%20dude.wav', 'https://dl.dropbox.com/s/esrdyvxq79sde2x/suite420.jpg', '', '#46718b', 'Suite 420 (2010)', null, null, null, null
-- );

-- INSERT INTO playlist (episode, name, artist, url, cover, lrc, theme, album, post_title, post_content1, post_content2, post_content3) VALUES (2, 'On My Block', 'Scarface', 'https://dl.dropbox.com/s/x4nx4t5qndntlld/on%20my%20block.wav', 'https://dl.dropbox.com/s/mq6npkvspmz5tjo/scarfacethefix.jpg', '', '#46718b', 'The Fix (2002)', null, null, null, null
-- );

-- INSERT INTO playlist (episode, name, artist, url, cover, lrc, theme, album, post_title, post_content1, post_content2, post_content3) VALUES (2, 'Family', 'Too Much Trouble', 'https://dl.dropbox.com/s/irs6rbqxep9hjdf/toomuchtrouble.wav', 'https://dl.dropbox.com/s/fve11got9xmhhok/playerschoice.jpg', '', '#46718b', 'Player's Choice (1993)', null, null, null, null
-- );

-- INSERT INTO playlist (episode, name, artist, url, cover, lrc, theme, album, post_title, post_content1, post_content2, post_content3) VALUES (2, 'Pinto', 'Boldy James (with The Alchemist)', 'https://dl.dropbox.com/s/uxgwoif5ryhqwvm/pinto.wav', 'https://dl.dropbox.com/s/9ommzunq97zejgc/price%20of%20tea.jpg', '', '#46718b', 'The Price of Tea in China (2020)', null, null, null, null
-- );

-- INSERT INTO playlist (episode, name, artist, url, cover, lrc, theme, album, post_title, post_content1, post_content2, post_content3) VALUES (2, 'Rabbit Hole (99 Bottles) [feat. Foul Mouth]', 'Isaac Castor', 'https://dl.dropbox.com/s/v1gkox073t3najx/rabbit%20hole.wav', 'https://dl.dropbox.com/s/uc6p1jvq2mo39oo/rabbit%20hole%20isaac.jpg', '', '#46718b', 'The Rabbit Hole (2020)', null, null, null, null
-- );

-- INSERT INTO playlist (episode, name, artist, url, cover, lrc, theme, album, post_title, post_content1, post_content2, post_content3) VALUES (2, 'Resonance', 'Home', 'https://dl.dropbox.com/s/94o1iosfiqfqjyt/Home%20-%20Resonance.wav', 'https://dl.dropbox.com/s/rrs6m7ufpikh9ou/home%20odyssey.jpg', '', '#46718b', 'Odyssey (2014)', null, null, null, null
-- );

-- INSERT INTO playlist (episode, name, artist, url, cover, lrc, theme, album, post_title, post_content1, post_content2, post_content3) VALUES (2, 'Good Time', 'Runners Club 95', 'https://dl.dropbox.com/s/j31g7totms4p9c1/runners%20club%2095.wav', 'https://dl.dropbox.com/s/6zs3ylya5d67zwx/no%20sugar%20added.jpg', '', '#46718b', 'No Sugar Added (2020)', null, null, null, null
-- );

-- INSERT INTO playlist (episode, name, artist, url, cover, lrc, theme, album, post_title, post_content1, post_content2, post_content3) VALUES (2, 'lay down / private caller', 'Bl00dwave', 'https://dl.dropbox.com/s/tepnxbvqz6lys5z/bl00dwave.wav', 'https://dl.dropbox.com/s/rtg0losppi16lnd/hotel%20vibes.jpg', '', '#46718b', 'Hotel Vibes (2019)', null, null, null, null
-- );

-- INSERT INTO playlist (episode, name, artist, url, cover, lrc, theme, album, post_title, post_content1, post_content2, post_content3) VALUES (2, 'Better', 'Saint Pepsi', 'https://dl.dropbox.com/s/6zzst24wjgebens/saint%20pepsi.wav', 'https://dl.dropbox.com/s/5flhczdhzzwjjnd/hit%20vibes.jpg', '', '#46718b', 'Hit Vibes (2013)', null, null, null, null
-- );

-- INSERT INTO playlist (episode, name, artist, url, cover, lrc, theme, album, post_title, post_content1, post_content2, post_content3) VALUES (2, 'Endurance', 'G. Calvin Weston (feat. The Pheonix Orchestra)', 'https://dl.dropbox.com/s/kis1uaqfjek2rt5/g%20calvin%20weston.wav', 'https://dl.dropbox.com/s/m91dlddwkqhq3ng/g%20calvin%20dust%20an%20dash.jpg', '', '#46718b', 'Dust and Ash (2019)', null, null, null, null
-- );

-- INSERT INTO playlist (episode, name, artist, url, cover, lrc, theme, album, post_title, post_content1, post_content2, post_content3) VALUES (2, 'Sister Ray (SSLLOOWWEEDD DDOOWWNN)', 'The Velvet Underground', 'https://dl.dropbox.com/s/c0bpyerfv0ra9js/Sister%20Ray%20%28CHOPPED-N-SCREWED%29.wav', 'https://dl.dropbox.com/s/oldrvrvrr0m99xi/whitelightwhiteheat.jpg', '', '#46718b', 'White Light/White Heat (1968)', null, null, null, null
-- );


-- --episode 3

-- -- <div><p>This is THE SECOND episode...</p></div>'
-- INSERT INTO card (title, date_of_show, teaser, card_image) VALUES ('Earth Nights #3', 'May 8, 2020', 'You have arrived at Episode 3', 'https://dl.dropbox.com/s/i557y8rv4bgxhsx/sike.jpg');

-- INSERT INTO playlist (episode, name, artist, url, cover, lrc, theme, album, post_title, post_content1, post_content2, post_content3) VALUES (3, 'Age of the Sun', 'The Sunshine Fix', 'https://dl.dropbox.com/s/pct7eh7nnz042pe/age%20of%20sun.wav', 'https://dl.dropbox.com/s/kmb8z9lif4lbvw5/age%20of%20the%20sun.jpeg', '', '#46718b', 'Age of the Sun (2002)', 'Earth Nights Playlist #3', 'Thanks for being here - enjoy the music. NOTE: If you happen to be listening on a mobile device, it might help to update your display settings to never let your device go to sleep, so the playlist can keep going without any clicking on your part. If you are listening on a desktop/laptop, you''re all good.', 'It has been another crazy week for the people of planet Earth. Hopefully, you are all social-distancing and staying healthy. This week, we have a playlist that features music old, recent, and brand new. We hope you enjoy some artists'' career-defining masterworks (Terry Riley - A Rainbow in Curved Air; and a cut from Philip Glass''s Einstein on the Beach), some spiritual space-jazz (Pharoah Sanders, Mark Fox, Nat Adderley Sextet), and music from some legends who left the planet this past month (the legendary Afrobeat drummer Tony Allen and Japanese guitar god Kyo Kawasaki).', 'Click on the Contact button below and get in touch! Stay safe during these weird pandemic times. See you next week!'
-- );

-- INSERT INTO playlist (episode, name, artist, url, cover, lrc, theme, album, post_title, post_content1, post_content2, post_content3) VALUES (3, 'The Late Great Cassiopia', 'The Essex Green', 'https://dl.dropbox.com/s/39ipmhif8zc6gnh/essex.wav', 'https://dl.dropbox.com/s/cd76cbbtehr37hi/essex%20green.jpeg', '', '#46718b', 'The Long Goodbye (2003)', null, null, null, null
-- );

-- INSERT INTO playlist (episode, name, artist, url, cover, lrc, theme, album, post_title, post_content1, post_content2, post_content3) VALUES (3, 'Robert Montgomery', 'Love', 'https://dl.dropbox.com/s/8cjlwawgonz3kjf/love%20rob%20mont.wav', 'https://dl.dropbox.com/s/v0wnt9qrrvd3cqv/LoveFourSail700.jpg', '', '#46718b', 'Four Sail (1969)', null, null, null, null
-- );

-- INSERT INTO playlist (episode, name, artist, url, cover, lrc, theme, album, post_title, post_content1, post_content2, post_content3) VALUES (3, 'Oh I Wept', 'Free', 'https://dl.dropbox.com/s/s9je5rxc17q6e24/free%20oh%20i%20wept.wav', 'https://dl.dropbox.com/s/641blrsl8eid6r4/freee.jpeg', '', '#46718b', 'Fire and Water (1970)', null, null, null, null
-- );

-- INSERT INTO playlist (episode, name, artist, url, cover, lrc, theme, album, post_title, post_content1, post_content2, post_content3) VALUES (3, 'A Rainbow in Curved Air', 'Terry Riley', 'https://dl.dropbox.com/s/js89mmf4f0ffjel/terry%20riley.wav', 'https://dl.dropbox.com/s/0ppyke1dgvq5foq/terry%20riley.jpeg', '', '#46718b', 'A Rainbow in Curved Air (1969)', null, null, null, null
-- );

-- INSERT INTO playlist (episode, name, artist, url, cover, lrc, theme, album, post_title, post_content1, post_content2, post_content3) VALUES (3, 'Love Is Everywhere', 'Pharoah Sanders', 'https://dl.dropbox.com/s/1curg0t3oq5q5b2/sanders%20love%20is.wav', 'https://dl.dropbox.com/s/ga9niuwtnwq0zh0/sanders%20love%20is.jpeg', '', '#46718b', 'Wisdom Through Music (1973)', null, null, null, null
-- );

-- INSERT INTO playlist (episode, name, artist, url, cover, lrc, theme, album, post_title, post_content1, post_content2, post_content3) VALUES (3, 'Mother Sky', 'Can', 'https://dl.dropbox.com/s/8e8nddbrtyc61lf/can%20mother%20sky.wav', 'https://dl.dropbox.com/s/0dea83bpb4u8938/can%20soundtracks.jpeg', '', '#46718b', 'Soundtracks (1970)', null, null, null, null
-- );

-- INSERT INTO playlist (episode, name, artist, url, cover, lrc, theme, album, post_title, post_content1, post_content2, post_content3) VALUES (3, 'Shadows', 'Alien Mustangs', 'https://dl.dropbox.com/s/jxkatuvotfbiyf0/alien%20mustangs.wav', 'https://dl.dropbox.com/s/0a0xaq0vrcccjl8/alien%20mustangs.jpeg', '', '#46718b', 'Shadows (2020)', null, null, null, null
-- );

-- INSERT INTO playlist (episode, name, artist, url, cover, lrc, theme, album, post_title, post_content1, post_content2, post_content3) VALUES (3, 'The Power of Suggestion', 'Paul Demarinis', 'https://dl.dropbox.com/s/x0jon539o86nvpf/07%20The%20Power%20of%20Suggestion.m4a', 'https://dl.dropbox.com/s/8397cutcyz7fbl1/demarinis.jpeg', '', '#46718b', 'Music as a Second Language (1991)', null, null, null, null
-- );

-- INSERT INTO playlist (episode, name, artist, url, cover, lrc, theme, album, post_title, post_content1, post_content2, post_content3) VALUES (3, 'Building', 'Philip Glass', 'https://dl.dropbox.com/s/t10f1zi6s7jw90u/3-03%20Building.m4a', 'https://dl.dropbox.com/s/bsd3yduava98ba0/einstein.jpeg', '', '#46718b', 'Einstein on the Beach (1996)', null, null, null, null
-- );

-- INSERT INTO playlist (episode, name, artist, url, cover, lrc, theme, album, post_title, post_content1, post_content2, post_content3) VALUES (3, 'Iridescent Sounds', 'Mark Fox', 'https://dl.dropbox.com/s/9yivayj9pxgif04/mark%20fox.wav', 'https://dl.dropbox.com/s/4euip5j6db7r5nn/mark%20fox.jpeg', '', '#46718b', 'Iridescent Sounds (2019)', null, null, null, null
-- );

-- INSERT INTO playlist (episode, name, artist, url, cover, lrc, theme, album, post_title, post_content1, post_content2, post_content3) VALUES (3, 'Space Spiritual', 'The Nat Adderley Sextet and Rick Holmes', 'https://dl.dropbox.com/s/jezih6g0c5y8te7/space%20spiritual.wav', 'https://dl.dropbox.com/s/yl141es2y57km9n/adderley.jpeg', '', '#46718b', 'Soul of the Bible (1972)', null, null, null, null
-- );

-- INSERT INTO playlist (episode, name, artist, url, cover, lrc, theme, album, post_title, post_content1, post_content2, post_content3) VALUES (3, 'Hustler', 'Tony Allen & Africa 70', 'https://dl.dropbox.com/s/45qho7vaa41s2zb/hustler.wav', 'https://dl.dropbox.com/s/xug9pxht1uwk7wy/tony%20allen.jpeg', '', '#46718b', 'Jealousy / Progress (1999)', null, null, null, null
-- );

-- INSERT INTO playlist (episode, name, artist, url, cover, lrc, theme, album, post_title, post_content1, post_content2, post_content3) VALUES (3, 'Newport', 'Sandy H', 'https://dl.dropbox.com/s/4w7xgyqpflgjcy6/sandy%20h.wav', 'https://dl.dropbox.com/s/pw5hzpnqs88s0ck/sandy%20h.jpeg', '', '#46718b', 'New Horizon (2017)', null, null, null, null
-- );

-- INSERT INTO playlist (episode, name, artist, url, cover, lrc, theme, album, post_title, post_content1, post_content2, post_content3) VALUES (3, 'Golden Triangle', 'Windows 96', 'https://dl.dropbox.com/s/7ysgz842bn84iwa/windows%2096.wav', 'https://dl.dropbox.com/s/f6ys6a6i2ejvedq/windows96.jpeg', '', '#46718b', 'Enchanted Instrumentals and Whispers (2019)', null, null, null, null
-- );

-- INSERT INTO playlist (episode, name, artist, url, cover, lrc, theme, album, post_title, post_content1, post_content2, post_content3) VALUES (3, 'Virtual World Generator', '猫 シ Corp.', 'https://dl.dropbox.com/s/9maolwqf5ipvixw/corps.wav', 'https://dl.dropbox.com/s/4nv6p23pe1lf7ss/palm%20mall%20mars.jpeg', '', '#46718b', 'Palm Mall Mars (2018)', null, null, null, null
-- );

-- INSERT INTO playlist (episode, name, artist, url, cover, lrc, theme, album, post_title, post_content1, post_content2, post_content3) VALUES (3, 'gra3dead', 'Haircuts For Men', 'https://dl.dropbox.com/s/hvhiwoowlgk3req/haircuts.wav', 'https://dl.dropbox.com/s/v9r4w8hiz7hvaky/haircuts.jpg', '', '#46718b', 'MIDI JAMS v2 (2020)', null, null, null, null
-- );

-- INSERT INTO playlist (episode, name, artist, url, cover, lrc, theme, album, post_title, post_content1, post_content2, post_content3) VALUES (3, '1, 2, the 3', 'Geto Boys', 'https://dl.dropbox.com/s/xjxjxg2oyei2p3f/geto%20boys.wav', 'https://dl.dropbox.com/s/xrv2na7yo5zl3r8/geto%20boys.jpeg', '', '#46718b', 'The Foundation (2005)', null, null, null, null
-- );

-- INSERT INTO playlist (episode, name, artist, url, cover, lrc, theme, album, post_title, post_content1, post_content2, post_content3) VALUES (3, 'High Ceiling', 'Nametag Alexander', 'https://dl.dropbox.com/s/iorvkv9im1wk7pa/nametag.wav', 'https://dl.dropbox.com/s/mxk4g5m2t8eb00n/nametag.jpeg', '', '#46718b', 'Work. Win. Repeat. The EP (2020)', null, null, null, null
-- );

-- INSERT INTO playlist (episode, name, artist, url, cover, lrc, theme, album, post_title, post_content1, post_content2, post_content3) VALUES (3, 'East Side Boogie', 'Ryo Kawasaki', 'https://dl.dropbox.com/s/7495cms51q2wdx5/ryo.wav', 'https://dl.dropbox.com/s/7rjjgg6qduze1mh/ryo.jpeg', '', '#46718b', 'Juice (1976)', null, null, null, null
-- );

-- --episode 4
-- INSERT INTO card (title, date_of_show, teaser, card_image) VALUES ('Earth Nights #4', 'May 15, 2020', '_/\_/\_/\_/\_/\_/\_/\_/\_/\_/\_/\_/\_/\_/', 'https://dl.dropbox.com/s/2ce59hx3cjgccl8/sike4.jpg');

-- INSERT INTO playlist (episode, name, artist, url, cover, lrc, theme, album, post_title, post_content1, post_content2, post_content3) VALUES (4, 'Everyone Thinks I''m a Raincloud (When I''m Not Looking)', 'Guided by Voices', 'https://dl.dropbox.com/s/m6luj95oij0nmd7/gbv.wav', 'https://dl.dropbox.com/s/aincbgymhvuywiw/gbvhalfsmiles.jpg', '', '#46718b', 'Half Smiles of the Decomposed (2004)', 'Earth Nights Playlist #4', 'Welcome back to the Earth Nights playlist. Hope you enjoy this week''s musical selections. Remember, if you are listening on a mobile device, it might help to update your display settings to need let your device go to sleep, so the playlist can keep going without any clicking on your part. Laptop/Desktop users - you''re fine. Maybe we''ll make a mobile version someday…', 'How is everyone doing? Hopefully this music can help you relax and shift your focus away from the uncertainty of daily life we find ourselves in. Click on the Contact button below and drop a message.', 'See you next week…'
-- );

-- INSERT INTO playlist (episode, name, artist, url, cover, lrc, theme, album, post_title, post_content1, post_content2, post_content3) VALUES (4, 'Everyone Is My Friend', 'Owls', 'https://dl.dropbox.com/s/fv9v6ajluf3a6zw/owls.wav', 'https://dl.dropbox.com/s/cc8dsqk4f24x6iv/owls.jpeg', '', '#46718b', 'Owls (2001)', null, null, null, null
-- );

-- INSERT INTO playlist (episode, name, artist, url, cover, lrc, theme, album, post_title, post_content1, post_content2, post_content3) VALUES (4, 
-- 'How To Say', 
-- 'Mamalarky', 
-- 'https://dl.dropbox.com/s/y5bstpuqffftutf/mamalarky.wav', 
-- 'https://dl.dropbox.com/s/oynrfjyuw6307am/mamalarky.jpg', '', 
-- '#46718b', 
-- 'How To Say (Single) (2020)', null, null, null, null
-- );

-- INSERT INTO playlist (episode, name, artist, url, cover, lrc, theme, album, post_title, post_content1, post_content2, post_content3) VALUES (4, 
-- 'Falling In Love With Myself Again', 
-- 'Sparks', 
-- 'https://dl.dropbox.com/s/sib92o2b00dad41/sparks.wav', 
-- 'https://dl.dropbox.com/s/wto2bhxrrwgl3es/sparks.jpg', '', 
-- '#46718b', 
-- 'Kimono My House (1974)', null, null, null, null
-- );

-- INSERT INTO playlist (episode, name, artist, url, cover, lrc, theme, album, post_title, post_content1, post_content2, post_content3) VALUES (4, 
-- 'Brown-Eyed Women', 
-- 'Grateful Dead', 
-- 'https://dl.dropbox.com/s/z77hg6gdfl11x7t/browneyed.wav', 
-- 'https://dl.dropbox.com/s/tz540px48jz3j8b/grateful.jpg', '', 
-- '#46718b', 
-- 'Europe ''72 (1972)', null, null, null, null
-- );

-- INSERT INTO playlist (episode, name, artist, url, cover, lrc, theme, album, post_title, post_content1, post_content2, post_content3) VALUES (4, 
-- 'Rattled By The Rush', 
-- 'Pavement', 
-- 'https://dl.dropbox.com/s/5nyj38cxpbjygpi/02%20Rattled%20By%20The%20Rush.wav', 
-- 'https://dl.dropbox.com/s/dnsnwcmf94mswcf/pavement.jpg', '', 
-- '#46718b', 
-- 'Wowee Zowee (1995)', null, null, null, null
-- );

-- INSERT INTO playlist (episode, name, artist, url, cover, lrc, theme, album, post_title, post_content1, post_content2, post_content3) VALUES (4, 
-- 'Ballad of the Lonely Argonaut', 
-- 'Beulah', 
-- 'https://dl.dropbox.com/s/q185vnn5tbdp3gm/beulah.wav', 
-- 'https://dl.dropbox.com/s/4zsov51ins0b03l/beulah.jpg', '', 
-- '#46718b', 
-- 'When Your Heartstrings Break (1999)', null, null, null, null
-- );

-- INSERT INTO playlist (episode, name, artist, url, cover, lrc, theme, album, post_title, post_content1, post_content2, post_content3) VALUES (4, 
-- 'Only Lonely', 
-- 'Rose City Band', 
-- 'https://dl.dropbox.com/s/nnojhnrhuwtsfca/rose%20city.wav', 
-- 'https://dl.dropbox.com/s/vp0yq495mktct0i/rose%20city.jpg', '', 
-- '#46718b', 
-- 'Summerlong (2020)', null, null, null, null
-- );

-- INSERT INTO playlist (episode, name, artist, url, cover, lrc, theme, album, post_title, post_content1, post_content2, post_content3) VALUES (4, 
-- 'Walking Into the Sun', 
-- 'Lightstorm', 
-- 'https://dl.dropbox.com/s/7mcqp9ywtq26vyi/lightstorm.wav', 
-- 'https://dl.dropbox.com/s/ydcsjjiduwzi2mr/lightstorm.jpg', '', 
-- '#46718b', 
-- 'Creation (2018)', null, null, null, null
-- );

-- INSERT INTO playlist (episode, name, artist, url, cover, lrc, theme, album, post_title, post_content1, post_content2, post_content3) VALUES (4, 
-- 'Scramble', 
-- 'Hiromasa Suzuki', 
-- 'https://dl.dropbox.com/s/gd1nwqjdirri20c/hiromasa.wav', 
-- 'https://dl.dropbox.com/s/oludmg0f743uvk8/hiromasa.jpg', '', 
-- '#46718b', 
-- 'High-Flying (1976)', null, null, null, null
-- );

-- INSERT INTO playlist (episode, name, artist, url, cover, lrc, theme, album, post_title, post_content1, post_content2, post_content3) VALUES (4, 
-- 'Home Is Where the Hatred Is', 
-- 'Gil Scott-Heron and Brian Jackson', 
-- 'https://dl.dropbox.com/s/dpr6pd7mqfd9qqw/gilscott.wav', 
-- 'https://dl.dropbox.com/s/n6xxoz4x0i5x7o5/gil%20scott.jpg', '', 
-- '#46718b', 
-- 'It''s Your World (1976)', null, null, null, null
-- );

-- -- INSERT INTO playlist (episode, name, artist, url, cover, lrc, theme, album, post_title, post_content1, post_content2, post_content3) VALUES (4, 
-- -- 'Never Trust', 
-- -- 'DJ Screw', 
-- -- 'https://dl.dropbox.com/s/1yzecxn7sb25hty/screwjune27.wav', 
-- -- 'https://dl.dropbox.com/s/is6c7pr3j25hkgc/djscrewjune27.jpg', '', 
-- -- '#46718b', 
-- -- 'June 27, Vol. 2 (2007)', null, null, null, null
-- -- );

-- INSERT INTO playlist (episode, name, artist, url, cover, lrc, theme, album, post_title, post_content1, post_content2, post_content3) VALUES (4, 
-- 'Never Trust', 
-- 'DJ Screw', 
-- 'https://dl.dropbox.com/s/1yzecxn7sb25hty/screwjune27.wav', 
-- 'https://dl.dropbox.com/s/is6c7pr3j25hkgc/djscrewjune27.jpg', '', 
-- '#46718b', 
-- 'June 27, Vol. 2 (2007)', null, null, null, null
-- );

-- INSERT INTO playlist (episode, name, artist, url, cover, lrc, theme, album, post_title, post_content1, post_content2, post_content3) VALUES (4, 
-- 'Front, Back & Side to Side', 
-- 'UGK', 
-- 'https://dl.dropbox.com/s/h524soi40r2c62y/ugk.wav', 
-- 'https://dl.dropbox.com/s/4n7a3fvw7h165bo/ugk.jpg', '', 
-- '#46718b', 
-- 'Super Tight (1994)', null, null, null, null
-- );

-- INSERT INTO playlist (episode, name, artist, url, cover, lrc, theme, album, post_title, post_content1, post_content2, post_content3) VALUES (4, 
-- 'Pinky Ring', 
-- 'UGK', 
-- 'https://dl.dropbox.com/s/93d3yo07oteqexg/piinkyraang.wav', 
-- 'https://dl.dropbox.com/s/7k2cvmaads41ik0/pinkyrang.jpg', '', 
-- '#46718b', 
-- 'Ridin' Dirty (1996)', null, null, null, null
-- );

-- INSERT INTO playlist (episode, name, artist, url, cover, lrc, theme, album, post_title, post_content1, post_content2, post_content3) VALUES (4, 
-- 'Life''s a Bitch', 
-- 'Nas', 
-- 'https://dl.dropbox.com/s/62v2ffsl2bd6wz8/nas.wav', 
-- 'https://dl.dropbox.com/s/wnoecgtuuyvybld/nas.jpg', '', 
-- '#46718b', 
-- 'Illmatic (1994)', null, null, null, null
-- );

-- INSERT INTO playlist (episode, name, artist, url, cover, lrc, theme, album, post_title, post_content1, post_content2, post_content3) VALUES (4, 
-- 'Double Cross', 
-- 'Chip Wickham', 
-- 'https://dl.dropbox.com/s/0pmlis1mwznkdn6/chip.wav', 
-- 'https://dl.dropbox.com/s/fqso7v9fo5bw2u2/chip.jpg', '', 
-- '#46718b', 
-- 'Blue to Red (2020)', null, null, null, null
-- );

-- INSERT INTO playlist (episode, name, artist, url, cover, lrc, theme, album, post_title, post_content1, post_content2, post_content3) VALUES (4, 
-- 'Get Away', 
-- 'The Players', 
-- 'https://dl.dropbox.com/s/msfztnrmq2twedm/players.wav', 
-- 'https://dl.dropbox.com/s/etq4p3brwdt2pp0/players.jpg', '', 
-- '#46718b', 
-- 'Madagascar Lady (1981)', null, null, null, null
-- );

-- INSERT INTO playlist (episode, name, artist, url, cover, lrc, theme, album, post_title, post_content1, post_content2, post_content3) VALUES (4, 
-- 'How Do Yeaw View You?', 
-- 'Funkadelic', 
-- 'https://dl.dropbox.com/s/c7vl9fppt8s089y/funkadelci.wav', 
-- 'https://dl.dropbox.com/s/51e9bb1hsl28ofm/funkadelic.jpg', '', 
-- '#46718b', 
-- 'Tales of Kidd Funkadelic (1976)', null, null, null, null
-- );

-- INSERT INTO playlist (episode, name, artist, url, cover, lrc, theme, album, post_title, post_content1, post_content2, post_content3) VALUES (4, 
-- 'High', 
-- 'Tengger', 
-- 'https://dl.dropbox.com/s/dnv76n9y1lc03p5/tengger.wav', 
-- 'https://dl.dropbox.com/s/ect0gcuchz4lo3r/tengger.jpg', '', 
-- '#46718b', 
-- 'Spiritual 2 (2019)', null, null, null, null
-- );

-- INSERT INTO playlist (episode, name, artist, url, cover, lrc, theme, album, post_title, post_content1, post_content2, post_content3) VALUES (4, 
-- 'Experience Near', 
-- 'Ezra Feinberg', 
-- 'https://dl.dropbox.com/s/050uesqe4ocgsau/ezra.wav', 
-- 'https://dl.dropbox.com/s/ggxtc2s9hlax760/ezra.jpg', '', 
-- '#46718b', 
-- 'Pentimento and Others (2018)', null, null, null, null
-- );

-- --playlist 5 .....

-- INSERT INTO card (title, date_of_show, teaser, card_image) VALUES ('Earth Nights #5', 'May 15, 2020', 'Some real fine musical selections...', 'https://dl.dropbox.com/s/ssz5jy6r7o66r5g/sikesike.jpg');

-- INSERT INTO playlist (episode, name, artist, url, cover, lrc, theme, album, post_title, post_content1, post_content2, post_content3) VALUES (5, 'Miagetegoran, Yoru No Hoshi Wo', 'Ground Zero', 'https://dl.dropbox.com/s/2jfqm75z6b7mv7j/groundzero.wav', 'https://dl.dropbox.com/s/nao66rmuokc5a43/groundzero.jpg', '', '#46718b', 'Plays Standards (1997)', 'Earth Nights Playlist #5', 'Welcome...', '... Enjoy this week''s selections...', 'Thanks for listening...'
-- );

-- INSERT INTO playlist (episode, name, artist, url, cover, lrc, theme, album, post_title, post_content1, post_content2, post_content3) VALUES (5, 
-- 'I Was Real', 
-- '75 Dollar Bill', 
-- 'https://dl.dropbox.com/s/dw22jj8cz6af544/75.wav', 
-- 'https://dl.dropbox.com/s/8c6wv1cy32rhmlv/75.jpg', '', 
-- '#46718b', 
-- 'I Was Real (2019)', null, null, null, null
-- );

-- INSERT INTO playlist (episode, name, artist, url, cover, lrc, theme, album, post_title, post_content1, post_content2, post_content3) VALUES (5, 
-- 'Sign Spinners', 
-- 'Natural Information Society', 
-- 'https://dl.dropbox.com/s/sgp7xll3zu5ejzy/natural.wav', 
-- 'https://dl.dropbox.com/s/knebxf96sfoabhf/natural.jpg', '', 
-- '#46718b', 
-- 'Automaginary (2015)', null, null, null, null
-- );

-- INSERT INTO playlist (episode, name, artist, url, cover, lrc, theme, album, post_title, post_content1, post_content2, post_content3) VALUES (5, 
-- 'Age of Energy', 
-- 'Chicago Underground Duo', 
-- 'https://dl.dropbox.com/s/6wdhsdp3fg3dd3n/chicago.wav', 
-- 'https://dl.dropbox.com/s/gk0np8cvzd14kxx/chicago.jpg', '', 
-- '#46718b', 
-- 'Age of Energy (2013)', null, null, null, null
-- );

-- INSERT INTO playlist (episode, name, artist, url, cover, lrc, theme, album, post_title, post_content1, post_content2, post_content3) VALUES (5, 
-- 'Lost My Drivin'' Wheel', 
-- 'The Byrds', 
-- 'https://dl.dropbox.com/s/7gltkcnmku0srom/byrds.wav', 
-- 'https://dl.dropbox.com/s/cbsa9v21ly753sk/byrds.jpg', '', 
-- '#46718b', 
-- 'Farther Along (1971)', null, null, null, null
-- );

-- INSERT INTO playlist (episode, name, artist, url, cover, lrc, theme, album, post_title, post_content1, post_content2, post_content3) VALUES (5, 
-- 'Running Thoughts', 
-- 'Deerhoof', 
-- 'https://dl.dropbox.com/s/yoxkaowhhqpft92/03%20Running%20Thoughts.wav', 
-- 'https://dl.dropbox.com/s/ljkakhufy0p9hrz/deerhoof.jpg', '', 
-- '#46718b', 
-- 'The Runners Four (2005)', null, null, null, null
-- );

-- INSERT INTO playlist (episode, name, artist, url, cover, lrc, theme, album, post_title, post_content1, post_content2, post_content3) VALUES (5, 
-- 'Back to Land', 
-- 'Wooden Shijps', 
-- 'https://dl.dropbox.com/s/1w4kv9lidgoa61p/01%20Back%20to%20Land.wav', 
-- 'https://dl.dropbox.com/s/y2x93v9t25eruk1/wooden.jpg', '', 
-- '#46718b', 
-- 'Back to Land (2013)', null, null, null, null
-- );

-- INSERT INTO playlist (episode, name, artist, url, cover, lrc, theme, album, post_title, post_content1, post_content2, post_content3) VALUES (5, 
-- 'A Peculiar Noise Called ''Train Director''', 
-- 'The Olivia Tremor Control', 
-- 'https://dl.dropbox.com/s/a1kqkgf4j0z4i7h/olivia.wav', 
-- 'https://dl.dropbox.com/s/907s3jekbhfg7in/Olivia_Tremor_Control_-_Black_Foliage.jpg', '', 
-- '#46718b', 
-- 'Black Foliage (1999)', null, null, null, null
-- );

-- INSERT INTO playlist (episode, name, artist, url, cover, lrc, theme, album, post_title, post_content1, post_content2, post_content3) VALUES (5, 
-- 'The Arrow Flies Close', 
-- 'Elf Power', 
-- 'https://dl.dropbox.com/s/c0mbar1wuqlymv8/elf.wav', 
-- 'https://dl.dropbox.com/s/j34gjovjd5tpe6l/elf.jpg', '', 
-- '#46718b', 
-- 'When the Red King Comes (1997)', null, null, null, null
-- );

-- INSERT INTO playlist (episode, name, artist, url, cover, lrc, theme, album, post_title, post_content1, post_content2, post_content3) VALUES (5, 
-- 'Scarlet Begonias / Fire On the Mountain (Live in Hamilton, Ontario, 5/22/1990)', 
-- 'Grateful Dead', 
-- 'https://dl.dropbox.com/s/dso7goe7pw758yp/dead.wav', 
-- 'https://dl.dropbox.com/s/k5wakdaqoya0c54/dead.jpg', '', 
-- '#46718b', 
-- 'So Many Roads (1965 - 1995) (1999)', null, null, null, null
-- );