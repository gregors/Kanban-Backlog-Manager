# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ :title => 'Chicago' }, { :title => 'Copenhagen' }])
#   Mayor.create(:title => 'Daley', :city => cities.first)

stati = StoryStatus.create([{:title => 'Selected'}, {:title => 'Ongoing'}, {:title => 'Review'}, {:title => 'Done'}, {:title => 'Deploy'}, {:title => 'Live!'}])

types = StoryType.create([{:title => 'Bug'}, {:title => 'Story'}, {:title => 'Epic'}])

storypoints = StorypointValue.create ([{:value => '0'},{:value => '1/2'}, {:value => '1'}, {:value => '2'}, {:value => '3'}, {:value => '5'}, {:value => '8'}, {:value => '13'}, {:value => '20'},{:value => '40'},{:value => '100'},{:value => '?'},{:value => 'infinite'}])
  
bv = BusinessValue.create ([{:value => '100'},
    {:value => '200'}, 
    {:value => '300'}, 
    {:value => '500'},
    {:value => '800'},
    {:value => '1200'},
    {:value => '2000'},
    {:value => '3000'}])