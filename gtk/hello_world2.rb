#!/usr/bin/env ruby

require 'gtk2'

# A push on a button will call this method
def callback(widget)
  puts "Hello again - #{widget.label}(#{widget}) was presset"
end

window = Gtk::Window.new

window.title = 'Hello buttons'
window.border_width = 10

window.signal_connect('delete_event') do
  Gtk.main_quit
  false
end

box1 = Gtk::HBox.new(false, 0)

window.add(box1)

button1 = Gtk::Button.new('Button 1')

button1.signal_connect( 'clicked' ) do |window|
  callback(window)
end

box1.pack_start(button1, true, true, 0)

button2 = Gtk::Button.new('Button 2')

button2.signal_connect('clicked') do |window|
  callback(window)
end

box1.pack_start(button2, true, true, 0)

window.show_all
Gtk.main
