import XMonad
import XMonad.Config.Gnome
import XMonad.Hooks.ManageHelpers (isFullscreen,doFullFloat)
import qualified XMonad.StackSet as W
import XMonad.Util.EZConfig

-- defaults on which we build
-- use e.g. defaultConfig or gnomeConfig
myBaseConfig = gnomeConfig

myWorkspaces = ["one","two","three","foo","bar","baz","lambda","no","more"]

myKeys =
    [
    -- other additional keys
    ]
    ++ -- important since ff. is a list itself, can't just put inside above list
    [ (otherModMasks ++ "M-" ++ [key], action tag)
         | (tag, key)  <- zip myWorkspaces "123456789"
         , (otherModMasks, action) <- [ ("", windows . W.view) -- was W.greedyView
                                      , ("S-", windows . W.shift)]
    ]

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
      workspaces = myWorkspaces,
      manageHook   = myManageHook,
      terminal     = "urxvt"
    } `additionalKeysP` myKeys
