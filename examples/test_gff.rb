#Parses a GFF file into an Array of Bio::GFF::GFF3::Record[http://bioruby.org/rdoc/Bio/GFF/GFF3/Record.html] objects
#* gff_file - a GFF-formatted file
#* returns - an Array of Bio::GFF::GFF3::Record[http://bioruby.org/rdoc/Bio/GFF/GFF3/Record.html] objects

require 'bio'

Bio::GFF::GFF3.new(File.read("transcript.gff"))
