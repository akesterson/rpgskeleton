rpgskeleton
===========

This is a skeleton project for use with RPG Maker VX Ace. It contains everything you need to get started on a collaborative RPG Maker VX Ace project.

There is a basic empty skeleton RPG Maker VX Ace project, along with some scripts and makefiles that make it easy to pack/unpack RPG Maker datafiles to/from YAML and script files. This converts them between plaintext formats, which means they're now easy to version control/merge/share. (And it means that programmers can work on scripts without ever opening the editor **at all**, just repack and run Game.exe!)

Dependencies
============

* gnu make
* ruby
* rvpacker (https://github.com/akesterson/rvpacker)
* RPG Maker VX Ace

For non-programmers
===================

For any project built off this skeleton, collaborating is easy:

* Download and install the version control client that your developer tells you to
* Check out the project from the URL they give you
* Repack the project
 * If you are on Linux or OS X:
  * Double-click the 'unpack.sh' script in Finder, Gnome file manager, or run it in a terminal
 * If you are on Windows:
  * Double-click the 'unpack.bat' script in Explorer
* Open the game project in RPG Maker and make whatever changes you want
* Unpack the project before committing it up for everyone else
 * If you are on Linux or OS X:
  * Double-click the 'pack.sh' script in Finder, Gnome file manager, or run in a terminal
 * If you are on Windows:
  * Double-click the 'pack.bat' script in Explorer
* Commit the project into version control

Now your programmers and project managers will thank you.

For programmers and others who care about diff/merge
====================================================

* Clone the project
* Do whatever work you're going to do
 * edit yaml files in YAML/; these are all the game database files converted to plaintext YAML
 * edit scripts under ./Scripts - these are all the game scripts, ready for your IDE/editor of choice
 * Whatever else
* Test your work in the game (or open it up in the editor)
 * make pack
 * do your testing
 * make unpack (convert it all back to text)
* Commit your work

The game skeleton has had all of the default ruby scripts yanked out. The scripts (100% stock) now live in ./Scripts/RPG/*rb. There is only one script loaded by the project proper (and which gets packed back into Data/), ./Scripts/entrypoint.rb. It doesn't do anything more than setup some load paths ( so 'require' works how we expect ), import the RPG module, and then call the main loop.

If you want to modify entrypoint.rb, do it before the game loop starts.
