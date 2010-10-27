require 'rubygems'

$:.unshift File.expand_path(File.dirname(__FILE__) + '/../lib')
require '#{PROJNAME}'

module Tests
    #TODO: Write some tests!
end

class Test::Unit::TestCase
    include Tests
end
