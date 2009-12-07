import XMonad
import XMonad.Hooks.ManageHelpers
import XMonad.Config.Gnome

myManageHooks = composeAll [ className =? "Skype" --> doFloat ]

main = xmonad gnomeConfig
        {
          terminal     = "urxvt",
          manageHook   = myManageHooks <+> manageHook gnomeConfig
        }
