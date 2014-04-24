$LOAD_PATH << '.'
$LOAD_PATH << 'Scripts'
$LOAD_PATH << 'Scripts/RPG'

require "RPG"

rgss_main { SceneManager.run }
