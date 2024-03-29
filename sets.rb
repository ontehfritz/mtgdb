require 'rubygems'
require 'mongo'
gem 'activerecord'
require 'active_record'
require 'mongo_mapper'
require 'open-uri'
load 'card.rb'
load 'card_set.rb'

include Mongo

MongoMapper.connection = Mongo::Connection.new("localhost", 27017)
MongoMapper.database = "mtg"

def load_sets()
  set1 = CardSet.new
  set1.name = "Dragon's Maze"
  set1.type = "Expansion"
  set1.block = "Return to Ravnica"
  set1._id = "DGM"
  set1.description = "Dragon's Maze is a Magic: The Gathering expansion set that was released on May 3, 2013. It is the third set of the Return to Ravnica block and contains 156 cards. All ten guilds of Ravnica will be included in the set. As in the original Ravnica block, Dragon's Maze focuses on multi-color cards. The set also marks the culmination of the Izzet League's research into the depths of Ravnica, the eponymous Dragon's Maze -- A path that treads all 10 guild gates in order to find and activate an energy source of immense power which is enough to subjugate and control all of the guilds. The Izzet propose a challenge in which each guild selects a champion in order to navigate and conquer the maze and subsequently the other guilds. Each Champion will have to traverse the maze, and they will have to deal with other guilds' attempts to halt their advance."
  set1.common = 70
  set1.uncommon = 40
  set1.rare = 35
  set1.mythicRare = 11
  set1.basicLand = 0
  set1.releasedAt = "2013-05-03" 
  id = set1.save


  set2 = CardSet.new
  set2.name = "Gatecrash"
  set2.type = "Expansion"
  set2.block = "Return to Ravnica"
  set2._id = "GTC"
  set2.description = "Gatecrash is a Magic: The Gathering expansion set released February 1, 2013. It is the second set of the Return to Ravnica block. The tagline for the set is 'Fight For Your Guild' and it contains 249 cards (101 commons, 80 uncommons, 53 rares, 15 mythic rares). Gatecrash focuses on five of the returning guilds; the Boros Legion, House Dimir, The Orzhov Syndicate, The Gruul Clans, and The Simic Combine. As in the original Ravnica block, Gatecrash focuses on multicolor cards. The storyline told deals with the rise of another faction that does not ally with any of the Guilds. This group is referred to as the 'Gateless'. The Gateless was referred to in the first set in certain cards as well. Another storyline has the tension between the guilds rise, and their attempts to thwart one another."
  set2.common = 101
  set2.uncommon = 80
  set2.rare = 53
  set2.mythicRare = 15
  set2.basicLand = 0
  set2.releasedAt = "2013-02-01" 
  id = set2.save

  set3 = CardSet.new
  set3.name = "Return to Ravnica"
  set3.type = "Expansion"
  set3.block = "Return to Ravnica"
  set3._id = "RTR"
  set3.description = "Return to Ravnica is a Magic: The Gathering expansion that was released on October 5, 2012. It is the first set of the Return to Ravnica block, and it contains 274 cards. Return to Ravnica focuses on five of the returning guilds; the Izzet League, Cult of Rakdos, Golgari Swarm, Azorius Senate, and Selesnya Conclave. As in the original Ravnica block, Return to Ravnica focuses on multicolor cards. The story told vaguely in the cards deals with the Izzet League searching for something deep within Ravnica's bowels and the other guilds responding to their mysterious actions."
  set3.common = 101
  set3.uncommon = 80
  set3.rare = 53
  set3.mythicRare = 15
  set3.basicLand = 25
  set3.releasedAt = "2012-10-05" 
  id = set3.save

  set4 = CardSet.new
  set4.name = "Planechase 2012 Edition"
  set4._id = "PC2"
  set4.type = "Non-standard Legal"
  set4.block = "Planechase"
  set4.description = 'The Planechase (2012 Edition) release consists of four 
  different game packs: "Chaos Reigns," "Night of the Ninja," 
  "Primordial Hunger," and "Savage Auras." Each game pack contains a 60-card 
  traditional Magic deck, a 10-card planar deck consisting of 8 plane cards and 
  2 phenomenon cards, and a six-sided planar die.'
  set4.common = 280
  set4.uncommon = 0
  set4.rare = 0
  set4.mythicRare = 0
  set4.basicLand = 0
  set4.releasedAt = "2012-06-01" 
  id = set4.save

  set5 = CardSet.new
  set5.name = "Avacyn Restored"
  set5.type = "Expansion"
  set5.block = "Innistrad"
  set5._id = "AVR"
  set5.description = "Avacyn Restored is a Magic: The Gathering expansion set that was released May 4, 2012.[1] It is the third set of the Innistrad block. The tagline for the set is 'Ignite the Dawn'.
  An animated trailer for Avacyn Restored has been released in English and Japanese."
  set5.common = 101
  set5.uncommon = 60
  set5.rare = 53
  set5.mythicRare = 15
  set5.basicLand = 15
  set5.releasedAt = "2012-05-04" 
  id = set5.save

  set6 = CardSet.new
  set6.name = "Dark Ascension"
  set6.type = "Expansion"
  set6.block = "Innistrad"
  set6._id = "DKA"
  set6.description = "Dark Ascension is a Magic: The Gathering expansion set released February 3, 2012. It is the second set of the Innistrad block. The tagline for the set is 'Command the Night'. It was first revealed at the 2011 Comic-Con in San Diego, California."
  set6.common = 64
  set6.uncommon = 44
  set6.rare = 38
  set6.mythicRare = 12
  set6.basicLand = 0
  set6.releasedAt = "2012-03-03" 
  id = set6.save

  set7 = CardSet.new
  set7.name = "Innistrad"
  set7.type = "Expansion"
  set7.block = "Innistrad"
  set7._id = "ISD"
  set7.description = "Innistrad is a Magic: The Gathering expansion set released September 30, 2011.[1] It is the first set of the Innistrad block. Innistrad is a 'top-down' designed set based around Gothic horror. The set's mechanics and effects are mainly based around graveyard themes, with a minor focus on tribal themes. The tagline for the set is 'Horror Lurks Within'. It has 264 cards."
  set7.common = 107
  set7.uncommon = 67
  set7.rare = 59
  set7.mythicRare = 16
  set7.basicLand = 15
  set7.releasedAt = "2011-09-30" 
  id = set7.save

  set8 = CardSet.new
  set8.name = "Commander"
  set8.type = "Non-standard Legal"
  set8.block = "Commander"
  set8._id = "CMD"
  set8.description = 'The _Magic: The Gathering -- Commander_ release consists 
  of five different decks: "Heavenly Inferno," "Mirror Mastery," "Counterpunch," 
  "Political Puppets," and "Devour for Power." Each deck includes a 100-card 
  singleton deck and three oversized foil commander cards.'
  set8.common = 500
  set8.uncommon = 0
  set8.rare = 0
  set8.mythicRare = 0
  set8.basicLand = 0
  set8.releasedAt = "2011-06-17" 
  id = set8.save

  set8b = CardSet.new
  set8b.name = "Commander's Arsenal"
  set8b.type = "Non-standard Legal"
  set8b.block = "Commander"
  set8b._id = "CM1"
  set8b.description = "Commander's Arsenal is a set 18 premium foil cards, 10 oversized premium foil cards, and a couple of accessories. The set was release on November 2, 2012. Each card was a reprint of a card often found in Commander or EDH decks."
  set8b.common = 28
  set8b.uncommon = 0
  set8b.rare = 0
  set8b.mythicRare = 0
  set8b.basicLand = 0
  set8b.releasedAt = "2012-11-02" 
  id = set8b.save

  set8c = CardSet.new
  set8c.name = "Commander 2013 Edition"
  set8c.type = "Non-standard Legal"
  set8c.block = "Commander"
  set8c._id = "C13"
  set8c.description = "Commander is a series of five 100-card, three color Magic: the Gathering decks, meant as a supplement to the variant format initially known as 'Elder Dragon Highlander (EDH)'. Each deck is based around a legendary creature, called a 'Commander' or 'General'. No card other than basic lands appear more than once in each deck, and each deck contains three foil oversized legendary creature cards. This set is notable in that it is the first set printed outside of the normal booster pack expansions to have functionally new cards. There are 51 new cards, made specifically for multi-player games, featured in Commander."
  set8c.common = 28
  set8c.uncommon = 0
  set8c.rare = 0
  set8c.mythicRare = 0
  set8c.basicLand = 0
  set8c.releasedAt = "2013-11-01" 
  id = set8c.save

  set9 = CardSet.new
  set9.name = "New Phyrexia"
  set9.type = "Expansion"
  set9.block = "Scars of Mirrodin"
  set9._id = "NPH"
  set9.description = 'New Phyrexia is a Magic: The Gathering expansion set that was released May 13, 2011. It is the third set of the Scars of Mirrodin block, which returns to the plane of Mirrodin, previously visited in the Mirrodin block that concluded in 2004. The release announcement indicated that the set, codenamed "Action", would be named either Mirrodin Pure or New Phyrexia.
  The tagline for the set is "The Grand Compleation is Achieved," and the expansion symbol matches the Phyrexian watermarks found on non-land or planeswalker cards from Scars of Mirrodin and Mirrodin Besieged. Prerelease events were held on May 7 and 8. It contains 175 cards.'
  set9.common = 60
  set9.uncommon = 60
  set9.rare = 35
  set9.mythicRare = 10
  set9.basicLand = 10
  set9.releasedAt = "2011-05-13" 
  id = set9.save

  set10 = CardSet.new
  set10.name = "Mirrodin Besieged"
  set10.type = "Expansion"
  set10.block = "Scars of Mirrodin"
  set10._id = "MBS"
  set10.description = 'Mirrodin Besieged is a Magic: The Gathering expansion set released February 4, 2011. It is the second set of the Scars of Mirrodin block. This block marked the return to the plane of Mirrodin, that was last visited in the Mirrodin block that concluded in 2004.[1] The tagline for the set was "Steel Yourself for War."[2] The Mirrodin Besieged Prereleases were held on January 29–30, 2011. They were different from other prereleases in that there were special Mirrodin Besieged boosters that were only available for the prerelease. These boosters were composed exclusively of cards from either the Mirran or the Phyrexian faction. A player had to choose one of these sides upon entering the prerelease and received the corresponding boosters.'
  set10.common = 60
  set10.uncommon = 40
  set10.rare = 35
  set10.mythicRare = 10
  set10.basicLand = 10
  set10.releasedAt = "2011-02-04" 
  id = set10.save

  set11 = CardSet.new
  set11.name = "Scars of Mirrodin"
  set11.type = "Expansion"
  set11.block = "Scars of Mirrodin"
  set11._id = "SOM"
  set11.description = 'Scars of Mirrodin is a Magic: The Gathering expansion that was released on October 1, 2010. It is the first set of the Scars of Mirrodin block. This block marked the return to the plane of Mirrodin. This plane was last visited in the Mirrodin block that concluded in 2004.[2] The interim tagline for the set was "The Corrosion Begins October 1, 2010." The plans for this set were first made public by mananation.com when it was discovered that "Scars of Mirrodin", as well as "Mirrodin Pure" and "New Phyrexia" had been registered as trademarks with the US Patent and Trademark Office by Wizards of the Coast.[3]
  As with the original Mirrodin block, artifacts make up the overarching theme of Scars of Mirrodin; Nearly half of all cards in the set are artifacts. In his May 24 column, Mark Rosewater confirmed that the "Infect" game mechanic in Scars of Mirrodin would bring poison counters back to Magic.'
  set11.common = 101
  set11.uncommon = 60
  set11.rare = 53
  set11.mythicRare = 15
  set11.basicLand = 20
  set11.releasedAt = "2010-10-01" 
  id = set11.save

  set12 = CardSet.new
  set12.name = "Archenemy"
  set12.type = "Compilations-Reprint"
  set12._id = "ARC"
  set12.block = nil
  set12.description = 'Archenemy is a variant of Magic: The Gathering with an emphasis on one vs. many multiplayer games. The set utilizes new oversized Scheme cards. Four game packs were released on June 18th, 2010: Assemble the Doomsday Machine, Bring About the Undead Apocalypse, Scorch the World with Dragonfire, Trample Civilization Underfoot. The cards within each preconstructed deck have all been reprinted from various Magic sets, with the exception of one card per deck, that is a new card from Magic 2011. All of the cards are black bordered and tournament legal in their original formats.'
  set12.common = 160
  set12.uncommon = 0
  set12.rare = 0
  set12.mythicRare = 0
  set12.basicLand = 0
  set12.releasedAt = "2010-06-18" 
  id = set12.save

  set13 = CardSet.new
  set13.name = "Rise of the Eldrazi"
  set13.type = "Expansion"
  set13.block = "Zendikar"
  set13._id = "ROE"
  set13.description = 'Rise of the Eldrazi is a Magic: The Gathering expansion released on April 23, 2010. It is the third set of the Zendikar block. It is a large set consisting of 228 cards plus 20 basic lands. Its tagline is "And Carnage Shall Follow." The set, while part of the Zendikar block creatively and for the sake of constructed tournament rules, is unique mechanically and is designed to be drafted on its own. Drafts in the Zendikar block are either ZEN-ZEN-WWK or ROE-ROE-ROE.'
  set13.common = 100
  set13.uncommon = 60
  set13.rare = 53
  set13.mythicRare = 15
  set13.basicLand = 20
  set13.releasedAt = "2010-04-23" 
  id = set13.save


  set14 = CardSet.new
  set14.name = "Worldwake"
  set14.type = "Expansion"
  set14.block = "Zendikar"
  set14._id = "WWK"
  set14.description = 'The _Worldwake_ set contains 145 cards (60 common, 
  40 uncommon, 35 rare, 10 mythic rare).'
  set14.common = 60
  set14.uncommon = 40
  set14.rare = 35
  set14.mythicRare = 10
  set14.basicLand = 0
  set14.releasedAt = "2010-02-05" 
  id = set14.save

  set15 = CardSet.new
  set15.name = "Zendikar"
  set15.type = "Expansion"
  set15.block = "Zendikar"
  set15._id = "ZEN"
  set15.description = 'The _Zendikar_ set features basic land cards that have 
  been printed without a text box. These lands appear in booster packs and in 
  the fat pack. Full-art basic lands function the same way as any other basic 
  lands, since each land with a basic land type intrinsically has the mana 
  ability associated with that type. (_Zendikar_ intro packs contain basic 
  land cards with normal card frames. The collector numbers of those cards 
  contain the letter "a.")'
  set15.common = 101
  set15.uncommon = 60
  set15.rare = 53
  set15.mythicRare = 15
  set15.basicLand = 20
  set15.releasedAt = "2009-10-02" 
  id = set15.save

  set16 = CardSet.new
  set16.name = "Planechase"
  set16._id = "HOP"
  set16.type = "Non-standard Legal"
  set16.block = "Planechase"
  set16.description = 'Planechase is a variant of Magic: The Gathering with an emphasis on multi-player games. The set utilizes new oversized Plane cards, cards that are based on various locations (Planes) within the Magic multiverse, to modify the rules of gameplay.'
  set16.common = 280
  set16.uncommon = 0
  set16.rare = 0
  set16.mythicRare = 0
  set16.basicLand = 0
  set16.releasedAt = "2009-11-04" 
  id = set16.save

  set17 = CardSet.new
  set17.name = "Masters Edition III"
  set17._id = "ME3"
  set17.type = "Online"
  set17.block = "Masters Editions"
  set17.description = "Masters Edition III consists mainly of cards from The Dark, Legends, and Portal Three Kingdoms. While The Dark and Legends reflect the era Masters Edition III cards should be mostly from, the Portal Three Kingdoms cards are arguably the most distinctive part of ME3 even though that set was released five years after Legends and The Dark. This is due to the fact that one of the most widely used creature abilities in Magic, 'Flying', is almost completely replaced by its Portal Three Kingdoms counterpart, 'Horsemanship'. The other mechanics employed in Masters Edition III are multicolored cards and Legendary Creatures. Masters Edition III has a minor tribal theme of Faeries, Kobolds, and Minotaurs are the tribes used in Masters Edition III. Masters Edition III also reprints six World Enchantments."
  set17.common = 75
  set17.uncommon = 70
  set17.rare = 70
  set17.mythicRare = 0
  set17.basicLand = 15
  set17.releasedAt = "2009-09-09" 
  id = set17.save

  set18 = CardSet.new
  set18.name = "Alara Reborn"
  set18.type = "Expansion"
  set18.block = "Shards of Alara"
  set18._id = "ARB"
  set18.description = "Alara Reborn (codenamed Scissors) is a Magic: The Gathering expansion set which was released on April 30, 2009. It includes 145 cards. To take advantage of International Workers' Day/Labor Day in Europe, it was released on a Thursday instead of the traditional Friday. The pre-release date was April 24, 2009."
  set18.common = 60
  set18.uncommon = 40
  set18.rare = 35
  set18.mythicRare = 10
  set18.basicLand = 0
  set18.releasedAt = "2009-04-30" 
  id = set18.save

  set19 = CardSet.new
  set19.name = "Conflux"
  set19.type = "Expansion"
  set19.block = "Shards of Alara"
  set19._id = "CON"
  set19.description = 'Conflux is a Magic: The Gathering expansion set, released on February 6, 2009. It is the 48th limited-edition expansion set for Magic and includes 145 cards.'
  set19.common = 60
  set19.uncommon = 40
  set19.rare = 35
  set19.mythicRare = 10
  set19.basicLand = 0
  set19.releasedAt = "2009-02-06" 
  id = set19.save

  set20 = CardSet.new
  set20.name = "Shards of Alara"
  set20.type = "Expansion"
  set20.block = "Shards of Alara"
  set20._id = "ALA"
  set20.description = 'Shards of Alara is an expansion set from the trading card game Magic: The Gathering. It is the 47th limited-edition expansion set for Magic and was released on October 3, 2008.[3] On Magic Online Shards was released on October 20, 2008.'
  set20.common = 101
  set20.uncommon = 60
  set20.rare = 53
  set20.mythicRare = 15
  set20.basicLand = 20
  set20.releasedAt = "2008-10-03" 
  id = set20.save

  set21 = CardSet.new
  set21.name = "Masters Edition II"
  set21.type = "Online"
  set21._id = "ME2"
  set21.block = "Masters Editions"
  set21.description = "The _Masters Edition II_ set is a collection of 
  _Magic_(TM) cards that were originally printed before the _Mirage_(TM) set was
  released. It's a 245-card, black-bordered set featuring 80 rares, 
  80 uncommons, 80 commons, and 5 basic lands. The _Masters Edition II_ set is 
  nonredeemable: Online cards from the _Masters Edition II_ set can't be 
  exchanged for physical cards"
  set21.common = 80
  set21.uncommon = 80
  set21.rare = 80
  set21.mythicRare = 0
  set21.basicLand = 5
  set21.releasedAt = "2008-09-26" 
  id = set21.save

  set22 = CardSet.new
  set22.name = "Eventide"
  set22.type = "Expansion"
  set22.block = "Shadowmoor"
  set22._id = "EVE"
  set22.description = 'Eventide is an expansion set, codenamed "Doughnut", from the trading card game Magic: The Gathering. It was released on July 25, 2008. The pre-release events for this set were held on July 12–13, 2008.'
  set22.common = 60
  set22.uncommon = 60
  set22.rare = 60
  set22.mythicRare = 0
  set22.basicLand = 0
  set22.releasedAt = "2008-06-25" 
  id = set22.save

  set23 = CardSet.new
  set23.name = "Shadowmoor"
  set23.type = "Expansion"
  set23.block = "Shadowmoor"
  set23._id = "SHM"
  set23.description = 'The Shadowmoor is an expansion set, codenamed "Jelly", from the trading card game Magic: The Gathering. It was released on May 2, 2008. The pre-release events for this set were held on April 19–20, 2008.'
  set23.common = 121
  set23.uncommon = 80
  set23.rare = 80
  set23.mythicRare = 0
  set23.basicLand = 20
  set23.releasedAt = "2008-05-02" 
  id = set23.save

  set24 = CardSet.new
  set24.name = "Morningtide"
  set24.type = "Expansion"
  set24.block = "Lorwyn"
  set24._id = "MOR"
  set24.description = 'Morningtide is an expansion set, codenamed "Butter", for the trading card game Magic: The Gathering. It is the 44th expert level set, and it was released on February 1, 2008. The pre-release events for this set were held on January 19 and January 20, 2008.'
  set24.common = 60
  set24.uncommon = 40
  set24.rare = 50
  set24.mythicRare = 0
  set24.basicLand = 0
  set24.releasedAt = "2008-02-01" 
  id = set24.save

  set25 = CardSet.new
  set25.name = "Lorwyn"
  set25.type = "Expansion"
  set25.block = "Lorwyn"
  set25._id = "LRW"
  set25.description = 'Lorwyn is the 66th Magic: The Gathering set, 43rd expert level set, and the first set in the Lorwyn Block, released in October 2007. It is codenamed "Peanut". The pre-release events for this set were held on September 29–30, 2007'
  set25.common = 121
  set25.uncommon = 80
  set25.rare = 80
  set25.mythicRare = 0
  set25.basicLand = 20
  set25.releasedAt = "2007-10-12" 
  id = set25.save

  set26 = CardSet.new
  set26.name = "Masters Edition"
  set26.type = "Online"
  set26._id = "MED"
  set26.block = "Masters Editions"
  set26.description = "Masters Edition is a series of Magic: The Gathering expansions that have been released exclusive for Magic: The Gathering Online. Each set consists of reprints from early Magic sets that had yet to be released to Magic Online. "
  set26.common = 60
  set26.uncommon = 60
  set26.rare = 60
  set26.mythicRare = 0
  set26.basicLand = 20
  set26.releasedAt = "2007-09-10" 
  id = set26.save

  set27 = CardSet.new
  set27.name = "Future Sight"
  set27.type = "Expansion"
  set27.block = "Time Spiral"
  set27._id = "FUT"
  set27.description = 'Future Sight is an expansion set, codenamed "Pop", for the trading card game Magic: The Gathering. The set was released worldwide on May 4, 2007. The pre-release events for this set were held on April 21 and April 22, 2007.'
  set27.common = 60
  set27.uncommon = 60
  set27.rare = 60
  set27.mythicRare = 0
  set27.basicLand = 0
  set27.releasedAt = "2007-05-04" 
  id = set27.save

  set28 = CardSet.new
  set28.name = "Planar Chaos"
  set28.type = "Expansion"
  set28.block = "Time Spiral"
  set28._id = "PLC"
  set28.description = 'Planar Chaos is an expansion set, codenamed "Crackle," from the trading card game Magic: The Gathering. The set was released on February 2, 2007. The pre-release events took place on January 20 and 21, 2007. It is the second set in the Time Spiral block. The symbol for Planar Chaos is a Möbius strip'
  set28.common = 60
  set28.uncommon = 55
  set28.rare = 50
  set28.mythicRare = 0
  set28.basicLand = 0
  set28.releasedAt = "2007-02-02" 
  id = set28.save

  set29 = CardSet.new
  set29.name = "Time Spiral"
  set29.type = "Expansion"
  set29.block = "Time Spiral"
  set29._id = "TSP"
  set29.description = 'Time Spiral is a Magic: The Gathering expansion set, released October 6, 2006. The set is laden with references to previous Magic: the Gathering sets. The references are reflected in the card design, which incorporates special rules from older sets, and in the "Timeshifted" cards, which are cards reprinted from older sets using the older card design (abandoned three years previous with the 2003 release of Core Set 8th Edition.) The Time Spiral expansion symbol is an hourglass.
  Time Spiral is the first set in the block of the same name. (A "block" consists of three theme-related expansion sets released over a period of a year.) It is followed by Planar Chaos, which deals with alternate timelines and includes many cards reprinted from previous sets but changed in some fundamental way, and Future Sight, which is forward-looking, both in that it includes cards from settings not yet explored in previous sets as well as including game mechanics that did not exist until it came out.
  As with all Magic: the Gathering sets in this period, Time Spiral is accompanied by a tie-in novel of the same name. Time Spiral, written by Scott McGough, focuses on the efforts of Teferi to deal with the consequences of phasing out Shiv and Zhalfir during the Phyrexian Invasion. This novel was published in September 2006.
  Time Spiral is typical among the first sets of a Magic: the Gathering block in that the cards are sold in four different forms. Four different theme decks, 60 card decks with themed, fixed composition were released, each featuring a different aspect of the set. Randomized packs, both as the typical 15-card booster packs and the larger 75-card tournament packs'
  set29.common = 121
  set29.uncommon = 80
  set29.rare = 80
  set29.mythicRare = 0
  set29.basicLand = 20
  set29.releasedAt = "2006-11-06" 
  id = set29.save

  set29b = CardSet.new
  set29b.name = 'Time Spiral "Timeshifted"'
  set29b.type = "Expansion"
  set29b.block = "Time Spiral"
  set29b._id = "TSH"
  set29b.description = "In the Time Spiral set, timeshifted cards make up a 121-card subset comprised entirely of pre-Mirrodin reprints, tying in with the set's theme of revisiting the past. Each card in the subset features the old 7th Edition card frame and has a new purple expansion symbol to denote their unique rarity. One timeshifted card appears in every Time Spiral booster pack, making the cards roughly 50% rarer than rare cards, which also appear once per pack but comprise of only 80 cards. However, in the Time Spiral Preconstructed Decks, timeshifted cards are treated as though they had their original rarity, as each deck features several of the timeshifted cards that were originally common, including multiples of the same card."
  set29b.common = 121
  set29b.uncommon = 0
  set29b.rare = 0
  set29b.mythicRare = 0
  set29b.basicLand = 0
  set29b.releasedAt = "2006-10-06" 
  id = set29b.save

  set30 = CardSet.new
  set30.name = "Coldsnap"
  set30.type = "Expansion"
  set30.block = "Ice Age"
  set30._id = "CSP"
  set30.description = 'Coldsnap is the thirty-ninth Magic expansion and the third set in the Ice Age block, taking the place of Homelands.'
  set30.common = 60
  set30.uncommon = 55
  set30.rare = 40
  set30.mythicRare = 0
  set30.basicLand = 0
  set30.releasedAt = "2006-06-21" 
  id = set30.save

  set31 = CardSet.new
  set31.name = "Dissension"
  set31.type = "Expansion"
  set31.block = "Ravnica"
  set31._id = "DIS"
  set31.description = 'Dissension is the 60th Magic: The Gathering set, 38th expert level set, and the third and final set in the Ravnica Block, released on May 5, 2006.'
  set31.common = 60
  set31.uncommon = 60
  set31.rare = 60
  set31.mythicRare = 0
  set31.basicLand = 0
  set31.releasedAt = "2006-05-05" 
  id = set31.save

  set32 = CardSet.new
  set32.name = "Guildpact"
  set32.type = "Expansion"
  set32.block = "Ravnica"
  set32._id = "GPT"
  set32.description = 'Guildpact is a Magic: The Gathering set, second in the Ravnica Block. Guildpact was released on February 3, 2006'
  set32.common = 55
  set32.uncommon = 55
  set32.rare = 55
  set32.mythicRare = 0
  set32.basicLand = 0
  set32.releasedAt = "2006-02-03" 
  id = set32.save

  set33 = CardSet.new
  set33.name = "Ravnica: City of Guilds"
  set33.type = "Expansion"
  set33.block = "Ravnica"
  set33._id = "RAV"
  set33.description = "Ravnica: City of Guilds is a Magic: The Gathering set and is the first set in the Ravnica Block. Ravnica was released on October 7, 2005 (prerelease events were held worldwide on September 24 and 25, 2005). Its expansion symbol is a silhouette of a city with a prominent clock tower.
  Following in the tradition of recent Magic blocks, Ravnica takes place in a plane of the multiverse that was previously unexplored in the game's backstory. The world of Ravnica is an ecumenopolis, a vast city that covers the entire surface of its planet, and is home to a diverse assortment of sentient races. Much power in Ravnica is held by the ten 'guilds', political factions that each represent a combination of two of Magic's five colors."
  set33.common = 110
  set33.uncommon = 88
  set33.rare = 88
  set33.mythicRare = 0
  set33.basicLand = 20
  set33.releasedAt = "2005-10-07" 
  id = set33.save

  set34 = CardSet.new
  set34.name = "Saviors of Kamigawa"
  set34.type = "Expansion"
  set34.block = "Kamigawa"
  set34._id = "SOK"
  set34.description = "Saviors of Kamigawa (also Saviors or SoK) is a Magic: The Gathering set, third and last in the Kamigawa block. Saviors of Kamigawa was released on June 3, 2005 (prerelease on May 21, 2005). Its expansion symbol is a Japanese lantern."
  set34.common = 55
  set34.uncommon = 55
  set34.rare = 55
  set34.mythicRare = 0
  set34.basicLand = 0
  set34.releasedAt = "2005-06-03" 
  id = set34.save

  set35 = CardSet.new
  set35.name = "Betrayers of Kamigawa"
  set35.type = "Expansion"
  set35.block = "Kamigawa"
  set35._id = "BOK"
  set35.description = "Betrayers of Kamigawa (Betrayers or BoK) is the name of 
  the Magic: The Gathering expansion set which came out in February 2005, and 
  is the second set in the Kamigawa block. It contains 165 cards. The set's 
  story is inspired by Japanese medieval myths and revolves around the battle 
  between spirits (kami) and living beings. The set's expansion symbol is a 
  shuriken, or ninja throwing star."
  set35.common = 55
  set35.uncommon = 55
  set35.rare = 55
  set35.mythicRare = 0
  set35.basicLand = 0
  set35.releasedAt = "2005-02-04" 
  id = set35.save

  set36 = CardSet.new
  set36.name = "Champions of Kamigawa"
  set36.type = "Expansion"
  set36.block = "Kamigawa"
  set36._id = "CHK"
  set36.description = "Champions of Kamigawa (Champions or CHK) is the name of 
  the Magic: The Gathering expansion set released October 1, 2004. The first set
  of the Kamigawa block, it set the stage for the block's story, which was 
  inspired by Japanese myths and revolves around the battle between spirits 
  (kami) and living beings.
  The set's expansion symbol is a torii, the entrance to the Shinto temple. This
  is especially important, as Kamigawa's original idea was summed up as 'Shinto 
  gone horribly wrong': Kami warring against their human worshippers."
  set36.common = 110
  set36.uncommon = 88
  set36.rare = 88
  set36.mythicRare = 0
  set36.basicLand = 20
  set36.releasedAt = "2004-10-01" 
  id = set36.save

  set37 = CardSet.new
  set37.name = "Fifth Dawn"
  set37.type = "Expansion"
  set37.block = "Mirrodin"
  set37._id = "5DN"
  set37.description = "Fifth Dawn is a Magic: The Gathering expansion set which was released in May 2004. It is the third and final set of the Mirrodin block. There are 165 cards overall, and like the rest of Mirrodin, an unusually large number of them are artifacts. However, Fifth Dawn adds a new twist to artifact theme of Mirrodin and Darksteel: it encourages using colored mana for playing artifact spells, via the Sunburst mechanic (see below). Fifth Dawn 's expansion symbol is a small image of Helm of Kaldra, a card from this set.
  Fifth Dawn introduced an enhanced design for artifact cards, which uses a darker inner border to help players distinguish artifacts from white cards. Fifth Dawn theme decks contained a few reprints from Mirrodin and Darksteel with the improved card face.
  The name Fifth Dawn is derived from the plane's five suns. Each sun is associated with a color of mana and the green sun, which has long been absent, returns to the sky as part of this set's storyline."
  set37.common = 55
  set37.uncommon = 55
  set37.rare = 55
  set37.mythicRare = 0
  set37.basicLand = 0
  set37.releasedAt = "2004-06-04" 
  id = set37.save

  set38 = CardSet.new
  set38.name = "Darksteel"
  set38.type = "Expansion"
  set38.block = "Mirrodin"
  set38._id = "DST"
  set38.description = "Darksteel is an expansion set for the game Magic: The Gathering, the second in the Mirrodin block of sets that also features Mirrodin and Fifth Dawn. It was released in February 2004, containing 165 cards. Darksteel continued the themes established in Mirrodin: Artifact cards, equipment and the mechanics that debuted. The expansion symbol for the set is the miniature version of the stylized Shield of Kaldra.
  Darksteel featured the powerful single card drawing engine masked as the infamous equipment Skullclamp. When it was eventually banned during block constructed a few months after Darksteel's release, Skullclamp was the first to have been banned in block constructed since Mercadian Masques' Rishadan Port"
  set38.common = 55
  set38.uncommon = 55
  set38.rare = 55
  set38.mythicRare = 0
  set38.basicLand = 0
  set38.releasedAt = "2004-02-06" 
  id = set38.save

  set39 = CardSet.new
  set39.name = "Mirrodin"
  set39.type = "Expansion"
  set39.block = "Mirrodin"
  set39._id = "MRD"
  set39.description = "Mirrodin was the 50th Magic: The Gathering set, the 30th expert level set, and the first set in the Mirrodin Block, released in October 2003. It is a 306-card expansion set. It is also the name of the block containing the Mirrodin, Darksteel and Fifth Dawn expansion sets. This expansion, as well as the rest of the block, is centered around artifacts and is only the second set to do so (from a card frequency point of view) since Antiquities. The percentage of artifact cards is much higher than in any preceding set. Mirrodin 's expansion symbol is a small image of Sword of Kaldra, a card from this set."
  set39.common = 110
  set39.uncommon = 88
  set39.rare = 88
  set39.mythicRare = 0
  set39.basicLand = 20
  set39.releasedAt = "2003-10-03" 
  id = set39.save

  set40 = CardSet.new
  set40.name = "Legions"
  set40.type = "Expansion"
  set40.block = "Onslaught"
  set40._id = "LGN"
  set40.description = 'Legions is the second set in the Onslaught block of cards of Magic: The Gathering, along with the expansions Onslaught and Scourge. It contained 145 cards which continued on the themes started in Onslaught. Its expansion symbol is two spears behind a shield.'
  set40.common = 55
  set40.uncommon = 45
  set40.rare = 45
  set40.mythicRare = 0
  set40.basicLand = 0
  set40.releasedAt = "2003-02-03"
  id = set40.save

  set40b = CardSet.new
  set40b.name = "Scourge"
  set40b.type = "Expansion"
  set40b.block = "Onslaught"
  set40b._id = "SCG"
  set40b.description = "Scourge is a Magic: The Gathering expansion set. It is the third set of the Onslaught block and the last set printed before the 'modern' card face style was introduced. There are 143 cards overall. The expansion symbol is a dragon's skull."
  set40b.common = 55
  set40b.uncommon = 44
  set40b.rare = 44
  set40b.mythicRare = 0
  set40b.basicLand = 0
  set40b.releasedAt = "2003-05-26"
  id = set40b.save

  set41 = CardSet.new
  set41.name = "Onslaught"
  set41.type = "Expansion"
  set41.block = "Onslaught"
  set41._id = "ONS"
  set41.description = "Onslaught is the 27th Magic: The Gathering expert-level expansion set. It was released in October 2002. The set's main theme is creature types (for example, Clerics and Goblins), and much of the game play concerns interactions between these 'tribes'. The story continues the saga of the Mirari from the previous block of expansion sets. The expansion symbol is an artist's rendition of a 'morphed' creature."
  set41.common = 110
  set41.uncommon = 110
  set41.rare = 110
  set41.mythicRare = 0
  set41.basicLand = 20
  set41.releasedAt = "2002-10-07" 
  id = set41.save

  set42 = CardSet.new
  set42.name = "Judgment"
  set42.type = "Expansion"
  set42.block = "Odyssey"
  set42._id = "JUD"
  set42.description = "Judgment is the third set in the Odyssey Block for the collectible card game Magic: The Gathering.
  This is the second expansion set made that did not have an equal number cards from each color. The first expansion with such an imbalance was its predecessor, the Torment expansion set, which was skewed towards the color black. The Judgment expansion set was meant to balance this, and skews towards green and white, black's enemy colors. The expansion symbol for Judgment was a scale.
  The set contains 33 Green cards, 33 White cards, 27 Red cards, 27 Blue cards and 16 Black cards. All multicolored cards in the set are both green and white."
  set42.common = 55
  set42.uncommon = 44
  set42.rare = 44
  set42.mythicRare = 0
  set42.basicLand = 0
  set42.releasedAt = "2002-05-27" 
  id = set42.save

  set43 = CardSet.new
  set43.name = "Torment"
  set43.type = "Expansion"
  set43.block = "Odyssey"
  set43._id = "TOR"
  set43.description = 'Torment is the second set in the Odyssey Block for the collectible card game Magic: The Gathering. This expansion set, which focused on black, is unique in that it is the first set to focus on a single color. It has 40 Black cards, 28 Blue cards, 28 Red cards, 21 Green Cards and 21 White cards. This imbalance is, however, balanced by the release of the third expansion set in the Odyssey Block, Judgment.'
  set43.common = 55
  set43.uncommon = 44
  set43.rare = 44
  set43.mythicRare = 0
  set43.basicLand = 0
  set43.releasedAt = "2002-02-04"
  id = set43.save

  set44 = CardSet.new
  set44.name = "Odyssey"
  set44.type = "Expansion"
  set44.block = "Odyssey"
  set44._id = "ODY"
  set44.description = 'Odyssey is the 24th Magic: The Gathering expert-level expansion set. Released in September, 2001, Odyssey is the first set in the Odyssey Block. Its expansion symbol is a small image of the Mirari (see storyline).'
  set44.common = 110
  set44.uncommon = 110
  set44.rare = 110
  set44.mythicRare = 0
  set44.basicLand = 20
  set44.releasedAt = "2001-10-01"
  id = set44.save

  set45 = CardSet.new
  set45.name = "Apocalypse"
  set45.type = "Expansion"
  set45.block = "Invasion"
  set45._id = "APC"
  set45.description = 'Apocalypse is the name of a Magic: The Gathering expansion set, released in June 2001. It is the third set of the Invasion Block.'
  set45.common = 55
  set45.uncommon = 44
  set45.rare = 44
  set45.mythicRare = 0
  set45.basicLand = 0
  set45.releasedAt = "2001-06-04"
  id = set45.save

  set46 = CardSet.new
  set46.name = "Planeshift"
  set46.type = "Expansion"
  set46.block = "Invasion"
  set46._id = "PLS"
  set46.description = 'Planeshift is the name of the second set in the Invasion block of cards of Magic: The Gathering, along with the expansions Invasion and Apocalypse. It contained 143 cards.'
  set46.common = 55
  set46.uncommon = 44
  set46.rare = 44
  set46.mythicRare = 0
  set46.basicLand = 0
  set46.releasedAt = "2001-02-05"
  id = set46.save

  set47 = CardSet.new
  set47.name = "Invasion"
  set47.type = "Expansion"
  set47.block = "Invasion"
  set47._id = "INV"
  set47.description = 'Invasion is the 21st expert level set, and the first set in the Invasion block of cards of Magic: The Gathering. The rest of the block is Planeshift and Apocalypse. It contains 350 cards.'
  set47.common = 110
  set47.uncommon = 110
  set47.rare = 110
  set47.mythicRare = 0
  set47.basicLand = 20
  set47.releasedAt = "2000-10-02"
  id = set47.save

  set48 = CardSet.new
  set48.name = "Magic 2014 Core Set"
  set48._id = "M14"
  set48.type = "Core"
  set48.block = nil
  set48.description = 'Magic 2014 is a Magic: The Gathering expansion set, released on July 19, 2013.The tagline for the set is "Ignite your Spark."
  Several new Magic 2014 cards and reprints have been released. The returning mechanics are Slivers, a series of creatures of which each grants an ability to each Sliver.'
  set48.common = 101
  set48.uncommon = 60
  set48.rare = 53
  set48.mythicRare = 15
  set48.basicLand = 20
  set48.releasedAt = "2013-06-19" 
  id = set48.save

  set49 = CardSet.new
  set49.name = "Magic 2013"
  set49.type = "Core"
  set49.block = nil
  set49._id = "M13"
  set49.description = "Magic 2013 is a Magic: The Gathering expansion set, which was released on July 13, 2012.[1] The tagline for the set is 'Face a Greater Challenge.'
  There were 108 new magic cards printed in this set. Magic 2013 is the first core set ever to have a multi colored card, the planeswalker Nicol Bolas. It is the second Magic Core set (Tenth Edition was the first) to feature legendary cards; one legendary creature of each color plus the artifact Akroma's Memorial."
  set49.common = 101
  set49.uncommon = 60
  set49.rare = 53
  set49.mythicRare = 15
  set49.basicLand = 20
  set49.releasedAt = "2012-07-13" 
  id = set49.save

  set50 = CardSet.new
  set50.name = "Magic 2012"
  set50.type = "Core"
  set50.block = nil
  set50._id = "M12"
  set50.description = 'Magic 2012 is a Magic: The Gathering expansion set that was released on July 15, 2011. It is the thirteenth core set for Magic: the Gathering.[1] This set has 97 new cards in it.'
  set50.common = 101
  set50.uncommon = 60
  set50.rare = 53
  set50.mythicRare = 15
  set50.basicLand = 20
  set50.releasedAt = "2011-07-15" 
  id = set50.save

  set51 = CardSet.new
  set51.name = "Magic 2011"
  set51.type = "Core"
  set51.block = nil
  set51._id = "M11"
  set51.description = 'agic 2011 is a Magic: The Gathering expansion set that was released on July 16, 2010. It was the twelfth core set for Magic: the Gathering. As its predecessor, Magic 2010, the set has new cards in it, but this time 110 new cards.'
  set51.common = 101
  set51.uncommon = 60
  set51.rare = 53
  set51.mythicRare = 15
  set51.basicLand = 20
  set51.releasedAt = "2010-07-16" 
  id = set51.save

  set52 = CardSet.new
  set52.name = "Magic 2010"
  set52.type = "Core"
  set52.block = nil
  set52._id = "M10"
  set52.description = 'Magic 2010 is a Magic: The Gathering expansion set, that was released on July 17, 2009. It is the eleventh core set for Magic: the Gathering. It is the first Core Set since Limited Edition Beta (which included two cards accidentally left out of the original Limited Edition Alpha) to feature new cards;[1] about half the cards were new with the rest being reprints (in contrast to most previous core sets, which consisted entirely of reprints).'
  set52.common = 101
  set52.uncommon = 60
  set52.rare = 53
  set52.mythicRare = 15
  set52.basicLand = 20
  set52.releasedAt = "2009-07-17" 
  id = set52.save

  set53 = CardSet.new
  set53.name = "Tenth Edition"
  set53.type = "Core"
  set53.block = nil
  set53._id = "10E"
  set53.description = "Tenth Edition (10th Edition) is a 'Core Set' for the collectible trading card game Magic: The Gathering. It was released on July 13, 2007, replacing Ninth Edition as the core set of cards for standard tournament play. The symbol for Tenth Edition is the Roman numeral 'X'.  As part of their 'Selecting Tenth Edition' promotion, Wizards of the Coast gave fans the chance to manage a part of the set's brand. The results gave the Roman numeral 'X' over the number '10', along with many other card, art, and flavor text choices.
  Tenth Edition was the first core set since Beta to be printed with black-bordered cards, rather than white-bordered ones. Tenth Edition is also the first core set to include legendary creatures (two of each color), bringing back flavorful relics of Magic's past such as Squee, Goblin Nabob, and Kamahl, Pit Fighter"
  set53.common = 121
  set53.uncommon = 121
  set53.rare = 121
  set53.mythicRare = 0
  set53.basicLand = 20
  set53.releasedAt = "2007-07-13" 
  id = set53.save

  set54 = CardSet.new
  set54.name = "Ninth Edition"
  set54.type = "Core"
  set54.block = nil
  set54._id = "9ED"
  set54.description = 'Ninth Edition (9th Edition) or Core Set is the fourth latest base set for the collectible trading card game, Magic: The Gathering.'
  set54.common = 110
  set54.uncommon = 110
  set54.rare = 110
  set54.mythicRare = 0
  set54.basicLand = 20
  set54.releasedAt = "2005-07-29" 
  id = set54.save

  set55 = CardSet.new
  set55.name = "Eighth Edition"
  set55.type = "Core"
  set55.block = nil
  set55._id = "8ED"
  set55.description = "Eighth Edition (8th Edition) or Core Set was the standard base set for the collectible trading card game, Magic: The Gathering from its release in 2003 until 9th Edition's release in 2005. Its expansion symbol is the number 8 with 3 cards behind it."
  set55.common = 110
  set55.uncommon = 110
  set55.rare = 110
  set55.mythicRare = 0
  set55.basicLand = 20
  set55.releasedAt = "2003-07-28" 
  id = set55.save

  set56 = CardSet.new
  set56.name = "Seventh Edition"
  set56.type = "Core"
  set56.block = nil
  set56._id= "7ED"
  set56.description = '7th Edition was a Magic: The Gathering set printed in 2001. It is the only core set since Alpha to have introduced all-new art for every card. A white-bordered set, it was first available on April 2, 2001. The set contained 350 cards. The expansion symbol was a stylized 7.'
  set56.common = 110
  set56.uncommon = 110
  set56.rare = 110
  set56.mythicRare = 0
  set56.basicLand = 20
  set56.releasedAt = "2001-04-11"
  id = set56.save

  set57 = CardSet.new
  set57.name = "Classic Sixth Edition"
  set57.type = "Core"
  set57.block = nil
  set57._id = "6ED"
  set57.description = 'The Sixth Edition core set of Magic: The Gathering, also known as Classic, was released on April 27, 1999. It contains 350 cards, with reprints of cards from previous core sets, as well as some new reprints from expansion sets through the Weatherlight expansion.'
  set57.common = 110
  set57.uncommon = 110
  set57.rare = 110
  set57.mythicRare = 0
  set57.basicLand = 20
  set57.releasedAt = "1999-04-28"
  id = set57.save

  set58 = CardSet.new
  set58.name = "Fifth Edition"
  set58.type = "Core"
  set58.block = nil
  set58._id = "5ED"
  set58.description = "The Fifth Edition was the seventeenth Magic: The Gathering set and fifth core set, a revision of the base set released in March 1997. It contained 449 cards, counting multiple illustrations of basic lands, making it the largest card set in the game's history. It was the first edition of the core set to reprint cards from Fallen Empires, Ice Age, and Homelands."
  set58.common = 165
  set58.uncommon = 132
  set58.rare = 132
  set58.mythicRare = 0
  set58.basicLand = 20
  set58.releasedAt = "1997-03-24"
  id = set58.save

  set59 = CardSet.new
  set59.name = "Fourth Edition"
  set59.type = "Core"
  set59.block = nil
  set59._id = "4ED"
  set59.description = 'The Fourth Edition of Magic: The Gathering was the tenth set released for the game, and the fourth base set (or "core set"). The set was released in April 1995 and contained 378 cards. It was the first set to reprint cards from the expansions Legends and The Dark. Fourth Edition cards have white borders. The set has no expansion symbol.
  Fourth Edition was the first Magic set to be printed in Asian languages. It was published in English, French, German, Italian, and as a first for a Magic set in Japanese, traditional Chinese, Korean, Spanish, and Portuguese, which was printed primarily for the Brazilian market. Korean and Chinese Fourth Edition cards have been made only with black borders while Japanese, Portuguese, and Spanish cards exist with white and black borders.'
  set59.common = 121
  set59.uncommon = 121
  set59.rare = 121
  set59.mythicRare = 0
  set59.basicLand = 15
  set59.releasedAt = "1995-04-01"
  id = set59.save

  set60 = CardSet.new
  set60.name = "Revised Edition"
  set60.type = "Core"
  set60.block = nil
  set60._id = "3ED"
  set60.description = 'The Revised Edition of Magic: The Gathering (also simply known as Revised) was the sixth set and third core set released for the game. Like previous core sets, it had no expansion symbol. Revised Edition cards are white-bordered and generally known for their washed-out look. The set was released in April 1994 and contained 306 cards. It was the first base set to contain cards from black-bordered sets other than Alpha and Beta'
  set60.common = 75
  set60.uncommon = 95
  set60.rare = 121
  set60.mythicRare = 0
  set60.basicLand = 15
  set60.releasedAt = "1994-04-01"
  id = set60.save

  set61a = CardSet.new
  set61a.name = "Limited Edition Alpha"
  set61a.type = "Core"
  set61a.block = nil
  set61a._id = "LEA"
  set61a.description = "The name Alpha refers to the first print run of the 
  original Magic: The Gathering Limited Edition, the first Magic: The Gathering 
  card set. It premiered in a limited release at Origins Game Fair in 1993, with 
  a general release that August. Its print run of 2.6 million cards sold out very quickly and was replaced by Limited Edition's Beta print run. Limited Edition cards have no expansion symbol, no copyright date, no trademark symbols, although they do list the art credits at the bottom of the card."
  set61a.common = 74
  set61a.uncommon = 95
  set61a.rare = 116
  set61a.mythicRare = 0
  set61a.basicLand = 10
  set61a.releasedAt = "1993-08-05" 
  id = set61a.save

  set61b = CardSet.new
  set61b.name = "Limited Edition Beta"
  set61b.type = "Core"
  set61b.block = nil
  set61b._id = "LEB"
  set61b.description = "Limited Edition Beta or just Beta refers to the second 
  print run of the original Magic: The Gathering Limited Edition, the first 
  Magic: The Gathering card set.[3] It was released as soon as Wizards of the 
  Coast could afford to pay for the rest of the print run. The company took 
  advantage of the fact that the first edition print run had been split to 
  correct some minor problems in the rules and fix some errors on the cards. 
  Clarifications were made to the rulebook, and Richard Garfield's short fiction 
  'Worzel's Tale' was removed to make room. Like Alpha it had no expansion symbol, 
  and the text on the bottom left consisted of only the artist credit. 
  Although many players speak of Alpha and Beta as different sets, officially 
  they are the same set, and the company had expected that people wouldn't 
  necessarily be able to tell the two press runs apart. However, the printer 
  accidentally used different corner rounding dies for the second run, resulting 
  in the two distinct sets."
  set61b.common = 75
  set61b.uncommon = 95
  set61b.rare = 117
  set61b.mythicRare = 0
  set61b.basicLand = 10
  set61b.releasedAt = "1993-10-01"
  id = set61b.save

  set61u = CardSet.new
  set61u.name = "Unlimited Edition"
  set61u.type = "Core"
  set61u.block = nil
  set61u._id = "2ED"
  set61u.description = 'Unlimited Edition was the second Magic: The Gathering 
  set. It was released on December 1, 1993, after Beta had sold out as quickly 
  as Alpha had; this time the run was 40 million cards, the largest yet. It 
  contains exactly the same cards as Beta, though with white borders instead of 
  black, setting the precedent for all successive printings of the basic set, 
  until the 2007 release of Tenth Edition, which returned to black borders.'
  set61u.common = 75
  set61u.uncommon = 95
  set61u.rare = 117
  set61u.mythicRare = 0
  set61u.basicLand = 15
  set61u.releasedAt = "1993-12-01"
  id = set61u.save



  set62 = CardSet.new
  set62.name = "Prophecy"
  set62.type = "Expansion"
  set62.block = "Masquerade"
  set62._id = "PCY"
  set62.description = 'Prophecy is a Magic: The Gathering expansion set. It was the third set of the Masques block, along with the expansion Mercadian Masques and Nemesis. The Prophecy expansion consists of 143 cards. Its expansion symbol are three crystals. Prophecy is set on the plane of Dominaria.'
  set62.common = 55
  set62.uncommon = 44
  set62.rare = 44
  set62.mythicRare = 0
  set62.basicLand = 0
  set62.releasedAt = "2000-06-05" 
  id = set62.save

  set63 = CardSet.new
  set63.name = "Nemesis"
  set63.type = "Expansion"
  set63.block = "Masquerade"
  set63._id = "NEM"
  set63.description = 'Nemesis is the second set in the Mercadian Masques block of sets in the Magic: The Gathering game, along with the expansions Mercadian Masques and Prophecy. Its expansion symbol is an axe. The set consists of 143 cards and was released on February 14, 2000. Nemesis is set on the plane of Rath.'
  set63.common = 55
  set63.uncommon = 44
  set63.rare = 44
  set63.mythicRare = 0
  set63.basicLand = 0
  set63.releasedAt = "2000-02-14"
  id = set63.save

  set64 = CardSet.new
  set64.name = "Mercadian Masques"
  set64.type = "Expansion"
  set64.block = "Masquerade"
  set64._id = "MMQ"
  set64.description = "Mercadian Masques is the nineteenth Magic: The Gathering expansion and was released in October 4, 1999 as the first set in the Masques block. It was the first set that is not subject to Wizards of the Coast's 'Reprint Policy'. Mercadian Masques is set on the plane of Mercadia."
  set64.common = 110
  set64.uncommon = 110
  set64.rare = 110
  set64.mythicRare = 0
  set64.basicLand = 20
  set64.releasedAt = "1999-10-04" 
  id = set64.save

  set65 = CardSet.new
  set65.name = "Urza's Destiny"
  set65.type = "Expansion"
  set65.block = "Artifacts"
  set65._id = 'UDS'
  set65.description = "Urza's Destiny is a Magic: The Gathering set, third in the Urza Block. Urza's Destiny was released on June 23, 1999. It was released in digital form on Magic Online on April 13, 2011."
  set65.common = 55
  set65.uncommon = 44
  set65.rare = 44
  set65.mythicRare = 0
  set65.basicLand = 0
  set65.releasedAt = "1999-05-29"  
  id = set65.save

  set66 = CardSet.new
  set66.name = "Urza's Legacy"
  set66.type = "Expansion"
  set66.block = "Artifacts"
  set66._id = "ULG"
  set66.description = "Urza's Legacy is a Magic: The Gathering set, second in the Urza Block. Urza's Legacy was released in February 1999."
  set66.common = 55
  set66.uncommon = 44
  set66.rare = 44
  set66.mythicRare = 0
  set66.basicLand = 0
  set66.releasedAt = "1999-02-15"
  id = set66.save

  set67 = CardSet.new
  set67.name = "Urza's Saga"
  set67.type = "Expansion"
  set67.block = "Artifacts"
  set67._id = "USG"
  set67.description = "Urza's Saga is the 15th expert level set, a 350-card expansion set for the fantasy game Magic: The Gathering. It debuted in October 1998. Mark Rosewater considers it to contain some of the most powerful artifacts (and artifact-related cards) ever released, with many cards now banned in tournament formats.[1] The expansion symbol features a pair of gears."
  set67.common = 110
  set67.uncommon = 110
  set67.rare = 110
  set67.mythicRare = 0
  set67.basicLand = 20
  set67.releasedAt = "1998-10-12" 
  id = set67.save

  set68 = CardSet.new
  set68.name = "Stronghold"
  set68.type = "Expansion"
  set68.block = "Rath"
  set68._id = "STH"
  set68.description = "Stronghold was the 21st Magic: The Gathering set and thirteenth expert level set, and the second set in the Rath Block, released in March 1998. The block includes Tempest and Exodus. Stronghold contains 143 cards. Its expansion symbol is the closed portcullis of Volrath's stronghold."
  set68.common = 55
  set68.uncommon = 44
  set68.rare = 44
  set68.mythicRare = 0
  set68.basicLand = 0
  set68.releasedAt = "1998-03-02" 
  id = set68.save

  set68b = CardSet.new
  set68b.name = "Exodus"
  set68b.type = "Expansion"
  set68b.block = "Rath"
  set68b._id = "EXO"
  set68b.description = "Exodus was the 22nd Magic: The Gathering set, fourteenth expert level set, and the third and final set in the Rath Block, released on 15 June 1998. Its expansion symbol is a bridge. On 7 December 2009 Exodus was released on Magic: The Gathering Online."
  set68b.common = 55
  set68b.uncommon = 44
  set68b.rare = 44
  set68b.mythicRare = 0
  set68b.basicLand = 0
  set68b.releasedAt = "1998-06-15" 
  id = set68b.save


  set69 = CardSet.new
  set69.name = "Tempest"
  set69.type = "Expansion"
  set69.block = "Rath"
  set69._id = "TMP"
  set69.description = "Tempest was the 20th Magic: The Gathering set and twelfth expert level set, and the first set in the Rath Block, released in October 1997. The release of Tempest represented a large jump in the power level of the card set, compared to the previous Mirage block. Many cards from Tempest instantly became (and still are) tournament staples. Its expansion symbol is a cloud, with a lightning bolt erupting out. On 8 December 2008 Tempest was released for Magic: The Gathering Online."
  set69.common = 110
  set69.uncommon = 10
  set69.rare = 110
  set69.mythicRare = 0
  set69.basicLand = 20
  set69.releasedAt = "1997-10-13" 
  id = set69.save

  set70 = CardSet.new
  set70.name = "Weatherlight"
  set70.type = "Expansion"
  set70.block = "Mirage"
  set70._id = "WTH"
  set70.description = "Weatherlight is the nineteenth Magic: The Gathering set and eleventh expert level set, third and last in the Mirage Block. Its expansion symbol is a book (the Thran Tome). It was released in June 1997 and later released for Magic: The Gathering Online on 12 December 2007.
  Weatherlight marks a turning point in design and marketing philosophy for the Magic game & brand. While previous sets included allusions to an overarching story, Weatherlight was the first set to explicitly tell an ordered narrative focused on developed, archetypical characters."
  set70.common = 62
  set70.uncommon = 55
  set70.rare = 50
  set70.mythicRare = 0
  set70.basicLand = 0
  set70.releasedAt = "1997-06-09" 
  id = set70.save


  set71 = CardSet.new
  set71.name = "Visions"
  set71.type = "Expansion"
  set71.block = "Mirage"
  set71._id = "VIS"
  set71.description = "Visions was the sixteenth Magic: The Gathering set and tenth expert level set, released in February 1997. This expansion continued the Mirage block by using the same setting and mechanics introduced in Mirage. The expansion symbol for Visions is a V-shaped symbol, which is the 'triangle of war' used by the Zhalfir in the story. On 10 April 2006 Visions was released on Magic: The Gathering Online."
  set71.common = 62
  set71.uncommon = 55
  set71.rare = 50
  set71.mythicRare = 0
  set71.basicLand = 0
  set71.releasedAt = "1997-02-03" 
  id = set71.save


  set72 = CardSet.new
  set72.name = "Mirage"
  set72.type = "Expansion"
  set72.block = "Mirage"
  set72._id = "MIR"
  set72.description = "Mirage was the fifteenth Magic: The Gathering set and ninth expert level set, released in October 1996. This expansion began the first official block set with one large expansion being followed by two smaller expansions all tied together through card mechanics and setting. This expansion also introduced 5th Edition rules (5th Edition was released in March 1997). Mirage's expansion symbol is a palm tree. On 5 December 2005 Mirage was released on Magic: The Gathering Online. It was the first set that was retroactively released on Magic Online."
  set72.common = 110
  set72.uncommon = 110
  set72.rare = 110
  set72.mythicRare = 0
  set72.basicLand = 20
  set72.releasedAt = "1996-10-07" 
  id = set72.save

  set73 = CardSet.new
  set73.name = "Alliances"
  set73.type = "Expansion"
  set73.block = "Ice Age"
  set73._id = "ALL"
  set73.description = 'Alliances is the eighth Magic expansion and the second set in the Ice Age block. It was originally the third set but it became the second when Homelands was removed from the block to make place for Coldsnap.'
  set73.common = 110
  set73.uncommon = 43
  set73.rare = 46
  set73.mythicRare = 0
  set73.basicLand = 0
  set73.releasedAt = "1996-05-18" 
  id = set73.save

  set74 = CardSet.new
  set74.name = "Homelands"
  set74.type = "Expansion"
  set74.block = nil
  set74._id = "HML"
  set74.description = 'Homelands was the thirteenth Magic: The Gathering set and seventh expert level set, released in October 1995. It was considered to be part of the Ice Age block until the announcement of Coldsnap in October 2005.'
  set74.common = 71
  set74.uncommon = 27
  set74.rare = 42
  set74.mythicRare = 0
  set74.basicLand = 0
  set74.releasedAt = "1995-10-01"
  id = set74.save

  set75 = CardSet.new
  set75.name = "Ice Age"
  set75.type = "Expansion"
  set75.block = "Ice Age"
  set75._id = "ICE"
  set75.description = 'ce Age is the eleventh Magic set and the sixth expansion set, released in June 1995. Set in the years from 450 to 2934 AR, the set describes a world set in perpetual winter due to the events in Antiquities.'
  set75.common = 121
  set75.uncommon = 121
  set75.rare = 121
  set75.mythicRare = 0
  set75.basicLand = 20
  set75.releasedAt = "1995-06-01"
  id = set75.save

  set76 = CardSet.new
  set76.name = "Fallen Empires"
  set76.type = "Expansion"
  set76.block = nil
  set76._id = "FEM"
  set16.description = 'Fallen Empires was the ninth Magic: The Gathering set and the fifth expansion set, released in November 1994. Out of the set of 187 cards, 102 were functionally unique, with the remainder being variant illustrations of other cards in the set. The mechanics of Fallen Empires include a tribal subtheme and heavy use of counters and tokens. Thematically the set experiments with conflict within the colors. The expansion symbol for the set is a crown.'
  set76.common = 121
  set76.uncommon = 30
  set76.rare = 36
  set76.mythicRare = 0
  set76.basicLand = 0
  set76.releasedAt = "1994-11-01"
  id = set76.save

  set77 = CardSet.new
  set77.name = "The Dark"
  set77.type = "Expansion"
  set77.block = nil
  set77._id = "DRK"
  set77.description = 'The Dark was the eighth Magic: The Gathering set and the fourth expansion to the game, released in August 1994. The set continued the story begun in Antiquities and recounted the aftermath of the events of that set. The 119-card set had a dark, sacrificial theme, though unlike its predecessor Legends it did not introduce any new keywords. Mechanically the set has no clear focus, experimenting in minor quantities with sacrifice and a tribal subtheme. The expansion symbol for the The Dark is an eclipsed moon.'
  set77.common = 40
  set77.uncommon = 44
  set77.rare = 35
  set77.mythicRare = 0
  set77.basicLand = 0
  set77.releasedAt = "1994-07-01"
  id = set77.save

  set78 = CardSet.new
  set78.name = "Legends"
  set78.type = "Expansion"
  set78.block = nil
  set78._id = "LEG"
  set78.description = 'Legends was the seventh Magic: The Gathering set and the third expansion set, released in June 1994. It was the first expansion set to be sold in packs of 15 (previous expansions had been sold in packs of 8). The set was designed by Wizards of the Coast co-founder Steve Conard and friend Robin Herbert in Canada before the game was initially released.[5] Legends introduces several mechanics and keywords to the game, but the focus of the set lies clearly on the Legends themselves. These were the first multicolored cards in the game. They are also special in that they are all Legendary creatures, meaning that only one of each type can be in play. The expansion symbol for Legends is the capital of a column.'
  set78.common = 75
  set78.uncommon = 114
  set78.rare = 121
  set78.mythicRare = 0
  set78.basicLand = 0
  set78.releasedAt = "1994-06-01"
  id = set78.save

  set79 = CardSet.new
  set79.name = "Antiquities"
  set79.type = "Expansion"
  set79.block = nil
  set79._id = "ATQ"
  set79.description = "Antiquities was the fifth Magic: The Gathering set and the second expansion set. It was the first set to have an original backstory that explores the mythos of the Magic universe (see Magic: The Gathering storylines). The story is primarily about the brothers Urza and Mishra who are inseparable at first, but become sworn enemies over the finding of two power stones. Trying to get hold of the other's stone they eventually lay waste to the whole continent of Terisiare. The set was created by the group of students at the University of Pennsylvania that had helped Richard Garfield design the original game. Mechanically Antiquities revolves around artifacts. Only 35 of the 85 different cards are colored, the remaining 50 cards being artifacts and lands. The expansion symbol for Antiquities was an anvil."
  set79.common = 30
  set79.uncommon = 44
  set79.rare = 26
  set79.mythicRare = 0
  set79.basicLand = 0
  set79.releasedAt = "1994-03-01"
  id = set79.save

  set80 = CardSet.new
  set80.name = "Arabian Nights"
  set80.type = "Expansion"
  set80.block = nil
  set80._id = "ARN"
  set80.description = 'Arabian Nights was the fourth Magic: The Gathering set 
  and the first expansion set. The set is composed entirely of new cards. The 
  setting of Arabian Nights is inspired by the themes and characters of the 
  Thousand and One Arabian Nights with some of the characters and places coming 
  directly from these tales. Arabian Nights is the only regular Magic expansion 
  based on real-world fiction. All other sets with the exception of the Portal 
  Three Kingdoms introductory set are based on fiction created exclusively for 
  the game. The expansion symbol of Arabian Nights is a scimitar.'
  set80.common = 40
  set80.uncommon = 19
  set80.rare = 32
  set80.mythicRare = 0
  set80.basicLand = 1
  set80.releasedAt = "1993-12-01"
  id = set80.save


  set81 = CardSet.new
  set81.name = "Chronicles"
  set81.type = "Compilations-Reprint"
  set81._id = "CHR"
  set81.block = nil
  set81.description = "Chronicles was the twelfth Magic: The Gathering set, and the first compilation set, released in July 1995 by Wizards of the Coast. The set is one of two sets that have been sold in twelve-card booster packs, the other having been Alliances."
  set81.common = 37
  set81.uncommon = 43
  set81.rare = 45
  set81.mythicRare = 0
  set81.basicLand = 0
  set81.releasedAt = "1995-07-01"
  id = set81.save

  set82 = CardSet.new
  set82.name = "Anthologies"
  set82._id = "ATH"
  set82.type = "Compilations-Reprint"
  set82.block = nil
  set82.description = "Anthologies was a box set, the second compilation set, from the card game Magic: The Gathering. It was printed in November 1998 to celebrate the 5th anniversary of Magic. It featured cards from Alpha through Urza's Saga. The print run was unknown. When it was first printed, Anthologies sold for around $20.00 MSRP, but prices have risen since. As the cards have white borders and standard backs, they are tournament-legal.
  Unlike Chronicles, an expansion, but like other box sets, such as Battle Royale or Duel Decks: Jace vs. Chandra, the reprinted cards did not count as current product, and thus were only legal in formats which allowed the original cards being reprinted to be used, and were not automatically legal in Standard at the time the product was available"
  set82.common = 120
  set82.uncommon = 0
  set82.rare = 0
  set82.mythicRare = 0
  set82.basicLand = 0
  set82.releasedAt = "1998-11-01"
  id = set82.save


  set83 = CardSet.new
  set83.name = "Battle Royale Box Set"
  set83._id = "BRB"
  set83.type = "Compilations-Reprint"
  set83.block = nil
  set83.description = "Battle Royale was a Magic: The Gathering boxed set, the third compilation set, released in November 1999 as a collection of cards emphasizing the multiplayer aspect of the game. Most of the cards included are ones that can affect multiple opponents. This promotion included cards from all different sets that existed previous to it. The cards still retained their original expansion symbols although they were printed with white borders, which was the standard for reprinted Magic: The Gathering cards of 'core sets' until the 2007 release of Tenth Edition. These are the only sets that are printed with white borders (which started with Unlimited.) Another interesting aspect is that colored expansions symbols were added to the cards that didn’t have them previously (namely cards from Tempest, Portal: Second Age, Stronghold and Ice Age.)
  The set included 160 cards built into four different two-color theme decks which are 40 cards each: Spirit Gale (blue / white), Chargoyf (green / red), The Deluge (green / white), and Cinder Heart (black / red)."
  set83.common = 160
  set83.uncommon = 0
  set83.rare = 0
  set83.mythicRare = 0
  set83.basicLand = 0
  set83.releasedAt = "1999-11-12"
  id = set83.save


  set84 = CardSet.new
  set84.name = "Beatdown Box Set"
  set84._id = "BTD"
  set84.type = "Compilations-Reprint"
  set84.block = nil
  set84.description = "Beatdown is a box set for the card game Magic: The Gathering, and the fourth compilation set. It was created for special reprint purposes only and was not legal in Standard at the time of its release. Beatdown was released as a pair of preconstructed decks combined with accessories, unlike the normal distribution of Magic cards in randomized packs. At the time of release it sold for around $30.00 MSRP. Alternate art was done for four cards: Sengir Vampire, Erhnam Djinn, Ball Lightning, and Clockwork Beast. The set is white-bordered, and the expansion symbol is a mace. There are no White cards in the set."
  set84.common = 122
  set84.uncommon = 0
  set84.rare = 0
  set84.mythicRare = 0
  set84.basicLand = 0
  set84.releasedAt = "2000-12-01"
  id = set84.save


  set85 = CardSet.new
  set85.name = "Deckmasters: Garfield vs. Finkel"
  set85._id = "DKM"
  set85.type = "Compilations-Reprint"
  set85.block = nil
  set85.description = "Deckmasters: Garfield vs. Finkel, usually known as simply Deckmasters, was a Magic: the Gathering set created in 2001 featuring copies of the decks used in a promotional match between Richard Garfield, the creator of the card game, and Jon Finkel, a Magic World Champion. Two decks were included in the set, a red/green deck used by Richard Garfield, and a red/black deck that was played by Finkel. It is the fifth compilation set."
  set85.common = 124
  set85.uncommon = 0
  set85.rare = 0
  set85.mythicRare = 0
  set85.basicLand = 0
  set85.releasedAt = "2001-12-01"
  id = set85.save

  set86 = CardSet.new
  set86.name = "Duels of the Planeswalkers"
  set86.type = "Video Games"
  set86._id = "DPA"
  set86.block = nil
  set86.description = "Magic: The Gathering – Duels of the Planeswalkers (DP) is a video game based on the popular collectible card game of the same name, published by Wizards of the Coast. It was released on June 17, 2009."
  set86.common = 0
  set86.uncommon = 0
  set86.rare = 0
  set86.mythicRare = 0
  set86.basicLand = 0
  set86.releasedAt = "2010-06-04"
  id = set86.save


  set87 = CardSet.new
  set87.name = "Modern Masters"
  set87._id = "MMA"
  set87.type = "Compilations-Reprint"
  set87.block = nil
  set87.description = "Modern Masters is the second Magic: The Gathering compilation set, with the first compilation set being Chronicles. It was released on June 7th, 2013 by Wizards of the Coast. One booster box of Modern Masters contains only 24 booster packs, compared to a regular expansion containing 36 packs. The pricing of a booster pack from Modern Masters has a suggested retail price of $6.99 up from a regular suggested price of $3.99 for a regular expansion booster pack.[2] The set will be released in English only."
  set87.common = 101
  set87.uncommon = 60
  set87.rare = 53
  set87.mythicRare = 15
  set87.basicLand = 0
  set87.releasedAt = "2013-07-07"
  id = set87.save

  set88 = CardSet.new
  set88.name = "Duel Decks: Elves vs. Goblins"
  set88._id = "EVG"
  set88.type = "Compilations-Reprint"
  set88.block = "Duel Decks"
  set88.description = "A stylized axe and bow combination symbol"
  set88.common = 120
  set88.uncommon = 0
  set88.rare = 0
  set88.mythicRare = 0
  set88.basicLand = 0
  set88.releasedAt = "2007-11-16"
  id = set88.save

  set89 = CardSet.new
  set89._id = "DD2"
  set89.name = "Duel Decks: Jace vs. Chandra"
  set89.type = "Compilations-Reprint"
  set89.block = "Duel Decks"
  set89.description = "A point-reflected pair of swooshes"
  set89.common = 120
  set89.uncommon = 0
  set89.rare = 0
  set89.mythicRare = 0
  set89.basicLand = 0
  set89.releasedAt = "2008-11-07"
  id = set89.save

  set90 = CardSet.new
  set90.name = "Duel Decks: Divine vs. Demonic"
  set90._id = "DDC"
  set90.type = "Compilations-Reprint"
  set90.block = "Duel Decks"
  set90.description = "A halo with horns coming up through its center"
  set90.common = 120
  set90.uncommon = 0
  set90.rare = 0
  set90.mythicRare = 0
  set90.basicLand = 0
  set90.releasedAt = "2009-04-10"
  id = set90.save

  set91 = CardSet.new
  set91.name = "Duel Decks: Garruk vs. Liliana"
  set91._id = "DDD"
  set91.type = "Compilations-Reprint"
  set91.block = "Duel Decks"
  set91.description = "A leaf inside a semicircle"
  set91.common = 120
  set91.uncommon = 0
  set91.rare = 0
  set91.mythicRare = 0
  set91.basicLand = 0
  set91.releasedAt = "2009-10-30"
  id = set91.save

  set92 = CardSet.new
  set92.name = "Duel Decks: Phyrexia vs. the Coalition"
  set92._id = "DDE"
  set92.type = "Compilations-Reprint"
  set92.block = "Duel Decks"
  set92.description = "Yawgmoth's and the Coalition's symbols combined"
  set92.common = 120
  set92.uncommon = 0
  set92.rare = 0
  set92.mythicRare = 0
  set92.basicLand = 0
  set92.releasedAt = "2010-03-19"
  id = set92.save

  set93 = CardSet.new
  set93.name = "Duel Decks: Elspeth vs. Tezzeret"
  set93._id = "DDF"
  set93.type = "Compilations-Reprint"
  set93.block = "Duel Decks"
  set93.description = "Two trapezoids with parts missing"
  set93.common = 120
  set93.uncommon = 0
  set93.rare = 0
  set93.mythicRare = 0
  set93.basicLand = 0
  set93.releasedAt = "2010-09-03"
  id = set93.save

  set94 = CardSet.new
  set94.name = "Duel Decks: Knights vs. Dragons"
  set94._id = "DDG"
  set94.type = "Compilations-Reprint"
  set94.block = "Duel Decks"
  set94.description = "A shield in the shape of a dragon in flight"
  set94.common = 120
  set94.uncommon = 0
  set94.rare = 0
  set94.mythicRare = 0
  set94.basicLand = 0
  set94.releasedAt = "2011-04-01"
  id = set94.save

  set95 = CardSet.new
  set95.name = "Duel Decks: Ajani vs. Nicol Bolas"
  set95._id = "DDH"
  set95.type = "Compilations-Reprint"
  set95.block = "Duel Decks"
  set95.description = "Nicol Bolas' horns superimposed on Ajani's axe-head"
  set95.common = 120
  set95.uncommon = 0
  set95.rare = 0
  set95.mythicRare = 0
  set95.basicLand = 0
  set95.releasedAt = "2011-09-02"
  id = set95.save

  set96 = CardSet.new
  set96.name = "Duel Decks: Venser vs. Koth"
  set96._id = "DDI"
  set96.type = "Compilations-Reprint"
  set96.block = "Duel Decks"
  set96.description = "Two nearly-interlocking zigzags"
  set96.common = 120
  set96.uncommon = 0
  set96.rare = 0
  set96.mythicRare = 0
  set96.basicLand = 0
  set96.releasedAt = "2012-03-30"
  id = set96.save

  set97 = CardSet.new
  set97.name = "Duel Decks: Izzet vs. Golgari"
  set97._id = "DDJ"
  set97.type = "Compilations-Reprint"
  set97.block = "Duel Decks"
  set97.description = "Combination of Izzet and Golgari symbols"
  set97.common = 120
  set97.uncommon = 0
  set97.rare = 0
  set97.mythicRare = 0
  set97.basicLand = 0
  set97.releasedAt = "2012-09-07"
  id = set97.save

  set98 = CardSet.new
  set98.name = "Duel Decks: Sorin vs. Tibalt"
  set98._id = "DDK"
  set98.type = "Compilations-Reprint"
  set98.block = "Duel Decks"
  set98.description = "Combination of stylized sword and jagged knife"
  set98.common = 120
  set98.uncommon = 0
  set98.rare = 0
  set98.mythicRare = 0
  set98.basicLand = 0
  set98.releasedAt = "2013-03-15"
  id = set98.save
  
  set98a = CardSet.new
  set98a.name = "Duel Decks: Heroes vs. Monsters"
  set98a.type = "Compilations-Reprint"
  set98a._id = "DDL"
  set98a.block = "Duel Decks"
  set98a.description = "Combination axe, helmet, and wings"
  set98a.common = 120
  set98a.uncommon = 0
  set98a.rare = 0
  set98a.mythicRare = 0
  set98a.basicLand = 0
  set98a.releasedAt = "2013-09-06"
  id = set98a.save
  
  set98b = CardSet.new
  set98b.name = "Duel Decks: Jace vs. Vraska"
  set98b._id = "DDM"
  set98b.type = "Compilations-Reprint"
  set98b.block = "Duel Decks"
  set98b.description = "Arcane symbol and gorgon tentacle"
  set98b.common = 120
  set98b.uncommon = 0
  set98b.rare = 0
  set98b.mythicRare = 0
  set98b.basicLand = 0
  set98b.releasedAt = "2014-03-14"
  id = set98b.save


  set99 = CardSet.new
  set99.name = "From the Vault: Dragons"
  set99._id = "DRB"
  set99.type = "Compilations-Reprint"
  set99.block = "From the vault"
  set99.description = "From the Vault: Dragons was released August 29, 2008.[1] It contained 15 cards, all of which were Dragons, and one of which was a pre-release of a card in the Shards of Alara set."
  set99.common = 15
  set99.uncommon = 0
  set99.rare = 0
  set99.mythicRare = 0
  set99.basicLand = 0
  set99.releasedAt = "2008-08-29"
  id = set99.save
  
  set100 = CardSet.new
  set100.name = "From the Vault: Exiled"
  set100._id = "V09"
  set100.type = "Compilations-Reprint"
  set100.block = "From the vault"
  set100.description = "From the Vault: Exiled was released August 28, 2009. It contained 15 cards, all of which are or were banned or restricted in some or all formats."
  set100.common = 15
  set100.uncommon = 0
  set100.rare = 0
  set100.mythicRare = 0
  set100.basicLand = 0
  set100.releasedAt = "2009-07-28"
  id = set100.save

  set101 = CardSet.new
  set101.name = "From the Vault: Relics"
  set101._id = "V10"
  set101.type = "Compilations-Reprint"
  set101.block = "From the vault"
  set101.description = "From the Vault: Relics was released August 27, 2010. It contained 15 cards, all of which were artifacts, and one of which was a pre-release of a card in the Scars of Mirrodin set."
  set101.common = 15
  set101.uncommon = 0
  set101.rare = 0
  set101.mythicRare = 0
  set101.basicLand = 0
  set101.releasedAt = "2010-08-27"
  id = set101.save

  set102 = CardSet.new
  set102.name = "From the Vault: Legends"
  set102._id = "V11"
  set102.type = "Compilations-Reprint"
  set102.block = "From the vault"
  set102.description = "From the Vault: Legends was released August 26, 2011. It contained 15 cards, all of which were legendary, and one of which was a pre-release of a card in the Innistrad set."
  set102.common = 15
  set102.uncommon = 0
  set102.rare = 0
  set102.mythicRare = 0
  set102.basicLand = 0
  set102.releasedAt = "2011-08-26"
  id = set102.save

  set103 = CardSet.new
  set103.name = "From the Vault: Realms"
  set103._id = "V12"
  set103.type = "Compilations-Reprint"
  set103.block = "From the vault"
  set103.description = "From the Vault: Realms: was released on August 31, 2012. It contained 15 cards, seven with new alternate art, all of which are lands."
  set103.common = 15
  set103.uncommon = 0
  set103.rare = 0
  set103.mythicRare = 0
  set103.basicLand = 0
  set103.releasedAt = "2012-08-31"
  id = set103.save

  set104 = CardSet.new
  set104.name = "From the Vault: Twenty"
  set104._id = "V13"
  set104.type = "Compilations-Reprint"
  set104.block = "From the vault"
  set104.description = "From the Vault: Twenty will be released on August 23, 2013. It will contain twenty cards, in commemoration of Magic's 20th anniversary."
  set104.common = 20
  set104.uncommon = 0
  set104.rare = 0
  set104.mythicRare = 0
  set104.basicLand = 0
  set104.releasedAt = "2013-08-23"
  id = set104.save

  set105 = CardSet.new
  set105.name = "Premium Deck Series: Slivers"
  set105._id = "H09"
  set105.type = "Compilations-Reprint"
  set105.block = "Premium Deck Series"
  set105.description = "Premium Deck Series: Slivers was released November 20, 2009. All creatures in this deck were of the Sliver subtype (including the mythic-rare Sliver Overlord)."
  set105.common = 59
  set105.uncommon = 0
  set105.rare = 0
  set105.mythicRare = 1
  set105.basicLand = 0
  set105.releasedAt = "2009-11-20"
  id = set105.save

  set106 = CardSet.new
  set106.name = "Premium Deck Series: Fire and Lightning"
  set106._id = "PD2"
  set106.type = "Compilations-Reprint"
  set106.block = "Premium Deck Series"
  set106.description = "Premium Deck Series: Fire & Lightning was released November 19, 2010. The set was mono-red and revolved around Elemental creatures and various red spells that dealt direct damage to creatures or opponents."
  set106.common = 60
  set106.uncommon = 0
  set106.rare = 0
  set106.mythicRare = 0
  set106.basicLand = 0
  set106.releasedAt = "2010-11-19"
  id = set106.save

  set107 = CardSet.new
  set107.name = "Premium Deck Series: Graveborn"
  set107._id = "PD3"
  set107.type = "Compilations-Reprint"
  set107.block = "Premium Deck Series"
  set107.description = "Premium Deck Series: Graveborn was released November 18, 2011. The set revolved around cards that deal with the graveyard."
  set107.common = 60
  set107.uncommon = 0
  set107.rare = 0
  set107.mythicRare = 0
  set107.basicLand = 0
  set107.releasedAt = "2011-11-18"
  id = set107.save

  set108 = CardSet.new
  set108.name = "Portal"
  set108._id = "POR"
  set108.type = "Introductory"
  set108.block = "Portal"
  set108.description = "Portal is the eighteenth Magic: The Gathering set and first starter level set, released on May 1, 1997. Depending on the language, the set contains between 221 and 228 cards."
  set108.common = 90
  set108.uncommon = 57
  set108.rare = 55
  set108.mythicRare = 0
  set108.basicLand = 20
  set108.releasedAt = "1997-06-01"
  id = set108.save

  set108b = CardSet.new
  set108b.name = "Portal Second Age"
  set108b._id = "P02"
  set108b.type = "Introductory"
  set108b.block = "Portal"
  set108b.description = "Portal Second Age is the name of the second Magic: The Gathering starter level set which came out on June 24, 1998. The set contains 165 cards in all languages except Portuguese, which contained 49 cards."
  set108b.common = 70
  set108b.uncommon = 35
  set108b.rare = 45
  set108b.mythicRare = 0
  set108b.basicLand = 15
  set108b.releasedAt = "1998-06-01"
  id = set108b.save

  set109 = CardSet.new
  set109.name = "Portal Three Kingdoms"
  set109._id = "PTK"
  set109.type = "Introductory"
  set109.block = "Portal"
  set109.description = "Portal Three Kingdoms is the third Magic: The Gathering expansion of the Portal block, and the third starter level set. Like the other expansions in the Portal block, Portal: Three Kingdoms is designed for beginners to Magic. The setting is heavily based on the Chinese historical novel Romance of the Three Kingdoms by Luo Guanzhong. Each card, including each basic land, was illustrated by a Chinese artist."
  set109.common = 55
  set109.uncommon = 55
  set109.rare = 55
  set109.mythicRare = 0
  set109.basicLand = 15
  set109.releasedAt = "1999-05-01"
  id = set109.save

  set110 = CardSet.new
  set110.name = "Starter 1999"
  set110._id = "S99"
  set110.type = "Introductory"
  set110.block = "Starter"
  set110.description = "Starter is the name of the Magic: The Gathering beginners set which came out on August 27, 1999. The set contains 173 cards. The set became known as Starter 1999 after the release of Starter 2000, and is the fourth starter level set."
  set110.common = 63
  set110.uncommon = 55
  set110.rare = 35
  set110.mythicRare = 0
  set110.basicLand = 20
  set110.releasedAt = "1999-07-01"
  id = set110.save

  set111 = CardSet.new
  set111.name = "Starter 2000"
  set111._id = "S00"
  set111.type = "Introductory"
  set111.block = "Starter"
  set111.description = "Starter 2000 was a limited run small theme deck only expansion set released for Magic: The Gathering on April 24, 2000. The set would be the fifth and last 'Starter Level' standalone set to see production."
  set111.common = 39
  set111.uncommon = 6
  set111.rare = 2
  set111.mythicRare = 0
  set111.basicLand = 10
  set111.releasedAt = "2000-07-01"
  id = set111.save

  set112 = CardSet.new
  set112.name = "Masters Edition IV"
  set112.type = "Online"
  set112._id = "ME4"
  set112.block = "Masters Editions"
  set112.description = "The fourth installment of the series consists mainly of cards from Beta, Arabian Nights, Antiquities, and the Portal sets. While Beta, Arabian Nights, and Antiquities reflect the era Masters Edition IV cards should mostly be from, the Portal and Starter cards in the set were necessary to create an enjoyable limited environment. Otherwise the number of creatures with an acceptable power level would have been too small.[5] The mechanics employed in Masters Edition IV focus on artifacts. Finally Birds, Zombies, Goblins, and Elephants are the tribes used in Masters Edition IV. The most prominent exception to this are the original dual lands, which had been previously printed across two sets, but here are reprinted in their entirety."
  set112.common = 80
  set112.uncommon = 72
  set112.rare = 105
  set112.mythicRare = 0
  set112.basicLand = 12
  set112.releasedAt = "2011-01-10"
  id = set112.save

  set113 = CardSet.new
  set113.name = "Unglued"
  set113._id = "UGL"
  set113.type = "Not legal"
  set113.block = "Un-sets"
  set113.description = "Unglued is the name of a Magic: The Gathering expansion set, the first silver-bordered, non-tournament-legal Magic: The Gathering expansion set released. It came out in August 1998. Its symbol is a cracked egg. Among the themes of the set were chicken, dice rolling and multiplayer Magic games."
  set113.common = 33
  set113.uncommon = 22
  set113.rare = 28
  set113.mythicRare = 0
  set113.basicLand = 5
  set113.releasedAt = "1998-07-07"
  id = set113.save

  set114 = CardSet.new
  set114.name = "Unhinged"
  set114._id = "UNH"
  set114.type = "Not legal"
  set114.block = "Un-sets"
  set114.description = "Unhinged is a humor and parody themed expansion set to the collectible card game Magic: The Gathering. Unhinged was released on November 19, 2004. Its tone is less serious than traditional Magic expansions. It is a follow-on to Unglued, an earlier humor themed expansion set."
  set114.common = 55
  set114.uncommon = 40
  set114.rare = 40
  set114.mythicRare = 0
  set114.basicLand = 5
  set114.releasedAt = "2004-11-20"
  id = set114.save
  
  set115 = CardSet.new
  set115.name = "Theros"
  set115._id = "THS"
  set115.type = "Expansion"
  set115.block = "Theros"
  set115.description = "The block is top-down-designed and is based on Greek mythology. It introduces the creature type God, the keywords Devotion, Monstrous, and Bestow, the ability word Heroic, and brings back the mechanic Scry. Its nonbasic lands include the rare Temples, which come into the battlefield tapped, give you one of two colors of mana (similar to Gates in the Return to Ravnica block) and let you Scry 1 when they come into play"
  set115.common = 101
  set115.uncommon = 60
  set115.rare = 53
  set115.mythicRare = 15
  set115.basicLand = 20
  set115.releasedAt = "2013-09-27"
  id = set115.save
  
  set116 = CardSet.new
  set116.name = "Born of the Gods"
  set116._id = "BNG"
  set116.type = "Expansion"
  set116.block = "Theros"
  set116.description = "Born of the Gods features 165 black-bordered cards, including randomly inserted premium versions of all cards in the set. Born of the Gods is available in booster packs, intro packs, and fat packs."
  set116.common = 60
  set116.uncommon = 60
  set116.rare = 35
  set116.mythicRare = 10
  set116.basicLand = 0
  set116.releasedAt = "2014-02-07"
  id = set116.save
  
  set117 = CardSet.new
  set117.name = "Journey into Nyx"
  set117._id = "JOU"
  set117.type = "Expansion"
  set117.block = "Theros"
  set117.description = "Like its predecessors, Journey into Nyx has a ancient Greek themed top-down design, making use of many mythological tropes. The set contains 165 cards (60 Common, 60 Uncommon, 35 Rare, 10 Mythic) and includes randomly inserted premium versions of all cards."
  set117.common = 60
  set117.uncommon = 60
  set117.rare = 35
  set117.mythicRare = 10
  set117.basicLand = 0
  set117.releasedAt = "2014-05-02"
  id = set117.save
  
  set118 = CardSet.new
  set118.name = "Magic: The Gathering-Conspiracy"
  set118._id = "CNS"
  set118.type = "Non-standard Legal"
  set118.block = nil
  set118.description = "Conspiracy is a Magic: The Gathering format to be released on June 6, 2014 cryptically announced through a strange card at the Born of the Gods prerelease events at a game store in the Philippines. It's designed to be the first ever multiplayer draft format and is released as boosters, with the usual rarity makeup of 11 commons, 3 uncommons, 1 rare or mythic rare, and 1 token or marketing card. The tagline for the set is 'Pick. Plot. Play.' Many cards from past expansions show up in Conspiracy, but there are also 65 new cards. Excluding the 13 'Conspiracy'-type cards which can be only used in Conspiracy-drafts, all of the new cards are legal in eternal format."
  set118.common = 89
  set118.uncommon = 68
  set118.rare = 43
  set118.mythicRare = 10
  set118.basicLand = 0
  set118.releasedAt = "2014-06-06"
  id = set118.save
  
  set119 = CardSet.new
  set119.name = "Modern Event Deck 2014"
  set119._id = "MD1"
  set119.type = "Event Decks"
  set119.block = nil
  set119.description = "60-card deck, 15-card sideboard"
  set119.common = 75
  set119.uncommon = 0
  set119.rare = 0
  set119.mythicRare = 0
  set119.basicLand = 0
  set119.releasedAt = "2014-05-30"
  id = set119.save
  
  #now lets relate the cards and sets 
  sets = CardSet.all

  sets.each do |s|
    
    print "Card set: " + s.name
    cards = Card.where(:cardSetName => s.name)
  
    cards.each do |c|
      s.cardIds << c._id
      c.releasedAt = s.releasedAt
      c.cardSetId = s._id
      c.save
    end
    
    print "\tSaving:" + s.cardIds.count.to_s + "\n"
    s.save
  end
end

load_sets()













