# frozen_string_literal: true

require 'pry'
require 'bundler'
Bundler.require

# puts "in environment"

require_relative "./ruby_films_cli_project/cli"
require_relative "./ruby_films_cli_project/api"
require_relative "./ruby_films_cli_project/film"
require_relative "./ruby_films_cli_project/version"