## SimpleCOV

require 'simplecov'
SimpleCov.start do
  add_filter "/test/"
end

require 'minitest/pride'
require 'minitest/autorun'

$VERBOSE = 1

require_relative '../lib/connection_pool'
