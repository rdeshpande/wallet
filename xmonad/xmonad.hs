import XMonad
import XMonad.Config.Gnome
import XMonad.Hooks.ManageHelpers (isFullscreen,doFullFloat)
import qualified XMonad.StackSet as W
import XMonad.Util.EZConfig

-- defaults on which we build
-- use e.g. defaultConfig or gnomeConfig
myBaseConfig = gnomeConfig

myManageHook = composeAll
    [ manageHook gnomeConfig
    , className =? "MPlayer"        --> doFloat
    , className =? "Gimp"           --> doFloat
    , className =? "rohan.deshpande - Skype™ (Beta)" --> doFloat
    , className =? "Pandora"           --> doFloat
    , resource  =? "desktop_window" --> doIgnore ]

myBorderWidth = 2
myNormalBorderColor = "#202030"
myFocusedBorderColor = "#A0A0D0"

-- put it all together
main = xmonad $ myBaseConfig
    { 
      normalBorderColor = myNormalBorderColor,
      focusedBorderColor = myFocusedBorderColor,
      focusFollowsMouse = False,
      manageHook   = myManageHook,
      terminal     = "urxvt"
    }
