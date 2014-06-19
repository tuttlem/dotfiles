import XMonad
import XMonad.Hooks.ManageDocks
import XMonad.Hooks.DynamicLog
import XMonad.Util.Run (spawnPipe)
import XMonad.Util.EZConfig (additionalKeys)
import System.IO

main = do
   xmproc <- spawnPipe "xmobar"
   xmonad =<< statusBar "xmobar" customPP toggleStrutsKey (customConfig xmproc)

customConfig xmproc = defaultConfig
   { terminal = "urxvt"
   , modMask  = mod4Mask
   , borderWidth = 1
   , normalBorderColor = "#333333"
   , focusedBorderColor = "#555555"
   , layoutHook = avoidStruts $ layoutHook defaultConfig
   , manageHook = manageHook defaultConfig <+> manageDocks
   , logHook = dynamicLogWithPP $ xmobarPP
                  { ppOutput = hPutStrLn xmproc
                  , ppTitle = xmobarColor "green" "" . shorten 50
                  }
   } `additionalKeys` customKeys

customKeys = [ ((mod4Mask, xK_w), spawn "firefox")
             , ((mod4Mask, xK_m), spawn "thunderbird")
             , ((mod4Mask, xK_b), sendMessage ToggleStruts)
	     , ((0	 , xK_Print), spawn "scrot")
             , ((0       , 0x1008FF11), spawn "amixer set Master 2-")
             , ((0       , 0x1008FF13), spawn "amixer set Master 2+")
             , ((0       , 0x1008FF12), spawn "amixer set Master toggle")
	     ]

customPP = xmobarPP
   { ppCurrent = xmobarColor "#429942" "" . wrap "<" ">" }

toggleStrutsKey XConfig { XMonad.modMask = modMask } = (mod4Mask, xK_b)
