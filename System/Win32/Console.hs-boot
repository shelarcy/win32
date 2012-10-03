#if __GLASGOW_HASKELL__ >= 701
{-# LANGUAGE Trustworthy #-}
#endif
module System.Win32.Console (
        getConsoleCP,
        setConsoleCP,
        getConsoleOutputCP,
        setConsoleOutputCP,
        getCurrentCodePage,
        CtrlEvent, cTRL_C_EVENT, cTRL_BREAK_EVENT,
        generateConsoleCtrlEvent
  ) where
import Data.Word

type DWORD         = Word32
type UINT          = Word32
type CodePage      = UINT
getCurrentCodePage :: IO CodePage
getConsoleCP :: IO UINT
setConsoleCP :: UINT -> IO ()
getConsoleOutputCP :: IO UINT
setConsoleOutputCP :: UINT -> IO ()
type CtrlEvent = DWORD
cTRL_C_EVENT       :: CtrlEvent
cTRL_BREAK_EVENT   :: CtrlEvent
generateConsoleCtrlEvent :: CtrlEvent -> DWORD -> IO ()
