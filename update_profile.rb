#!/usr/bin/env ruby

require 'net/http'
require 'json'
require 'yaml'

BASE_URL   = 'https://coderdojo.jp'
DOJO_STATS = JSON.parse Net::HTTP.get(URI.parse "#{BASE_URL}/stats.json"), symbolize_names: true
STATS_PATH = '_data/stats.yml'

stats   = YAML.load_file(STATS_PATH)
stats['active_dojos'] = DOJO_STATS[:active_dojos]
YAML.dump stats, File.open(STATS_PATH, 'w')
