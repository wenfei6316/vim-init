function BuildHSR()
    cd install
    AsyncRun build-agent-fulllog.bat
    cd ..
endf
map make :call BuildHSR()

function LaunchHSRClient()
    !start C:\Users\v\Downloads\0\0_as\winc\install\setup\x86\bin\r-old.bat
endf
map test :call LaunchHSRClient()

