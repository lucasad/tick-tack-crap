#!/usr/bin/env ruby

begin
  require 'tictactoe'
rescue LoadError
  require 'rubygems'
  require 'tictactoe'
end