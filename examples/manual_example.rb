require 'bio-svgenes'

p = Bio::Graphics::Page.new(
             :width => 800, 
             :height => 200, 
             :number_of_intervals => 10,
             :font_size => 7
)
generic_track = p.add_track(
    :glyph => :generic, 
    :name => 'generic_features', 
    :label => true
)

mini_feature = Bio::Graphics::MiniFeature.new(
    :start => 923, 
    :end => 2212, 
    :strand => '+', 
    :id => "MyFeature"
)

generic_track.add(mini_feature)

p.write("manual_example.svg")