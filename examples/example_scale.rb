#!/usr/bin/env ruby
#
#  example.rb
#
#  Created by Dan MacLean (TSL) on 2012-09-28.
#  Copyright (c)  . All rights reserved.
###################################################

##A very straightforward example that creates all the features and tracks explicitly.


require 'bio-svgenes'

##create the page
p = Bio::Graphics::Page.new(:width => 800, 
             :height => 200, 
             :number_of_intervals => 15,
             :font_size => 12
             )
             
##add a generic glyph track             
generic_track = p.add_track(:glyph => :generic, 
                            :name => 'generic_features', 
                            :label => true  )

##and some features                            
feature1 = Bio::Graphics::MiniFeature.new(:start => 100, :end => 10000000, :strand => '+', :id => "MyFeature")
generic_track.add(feature1) 


p.draw