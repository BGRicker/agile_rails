# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)#

Product.delete_all
#...
Product.create(:title => 'Predator',
  :description =>
    %{<p>
        Predator is the greatest movie of all time. A group of guys with guns are dropped into the jungle to kill an alien they didn't even know was there.
      </p>},
  :image_url => '/images/predator.jpg',
  :price => 9.99)
#...
Product.create(:title => 'Commando',
  :description =>
    %{<p>
        Commando is the greatest movie of all time. A single guy with a bunch of guns is dropped into the the middle of a wicked plot to kill him.
      </p>},
  :image_url => '/images/commando.jpg',
  :price => 9.99)
#...
Product.create(:title => 'Jingle All the Way',
  :description =>
    %{<p>
        Jingle All the Way is the greatest Christmas movie of all time. Can Arnold get his kid the hottest Christmas toy ever in time? WE'LL SEE!
      </p>},
  :image_url => '/images/jingle.jpg',
  :price => 9.99)
#...
