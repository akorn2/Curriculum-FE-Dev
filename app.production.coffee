axis            = require 'axis'
rupture         = require 'rupture'
autoprefixer    = require 'autoprefixer-stylus'
jeet            = require 'jeet'
browserify      = require 'roots-browserify'
dynamic_content = require 'dynamic-content'
yaml            = require 'roots-yaml'
# sass            = require 'node-sass'

module.exports =
  ignores: ['readme.md', '**/*layout.*', '**/_*', '.gitignore', '.editorconfig', 'ship.conf']

  locals:
    title: 'Curious Aaron: FE Discoveries'
    author: 'Aaron Schleichkorn'
    description: 'Collection of Goodies'

  extensions: [
    dynamic_content(),
    browserify(files: 'assets/js/main.coffee', out: 'js/build.js', minify: true),
    # sass(files: 'assets/scss/overlays.scss', out: 'css/compiled.css'),
    yaml()
  ]

  stylus:
    use: [axis(), rupture(), jeet(), autoprefixer()]
