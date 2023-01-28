echo off
echo .
cls

::Based on : https://www.nulled.to/topic/1327565-actiavte-windows-10-without-any-programs-or-keys-windows-10-pro-home-education/page-1

:: BatchGotAdmin
:-------------------------------------
REM  --> Check for permissions
    IF "%PROCESSOR_ARCHITECTURE%" EQU "amd64" (
>nul 2>&1 "%SYSTEMROOT%\SysWOW64\cacls.exe" "%SYSTEMROOT%\SysWOW64\config\system"
) ELSE (
>nul 2>&1 "%SYSTEMROOT%\system32\cacls.exe" "%SYSTEMROOT%\system32\config\system"
)

REM --> If error flag set, we do not have admin.
if '%errorlevel%' NEQ '0' (
    echo Requesting administrative privileges...
    goto UACPrompt
) else ( goto gotAdmin )

:UACPrompt
    echo Set UAC = CreateObject^("Shell.Application"^) > "%temp%\getadmin.vbs"
    set params= %*
    echo UAC.ShellExecute "cmd.exe", "/c ""%~s0"" %params:"=""%", "", "runas", 1 >> "%temp%\getadmin.vbs"

    "%temp%\getadmin.vbs"
    del "%temp%\getadmin.vbs"
    exit /B

:gotAdmin
    pushd "%CD%"
    CD /D "%~dp0"
:--------------------------------------    

:start

mode con: cols=118 lines=10

echo "  _ _ _ _       _                  _____     _   _         _              _____                              _       
echo " | | | |_|___ _| |___ _ _ _ ___   |  _  |___| |_|_|_ _ ___| |_ ___ ___   | __  |_ _    ___ ___ ___ ___ _____| |_ ___ 
echo " | | | | |   | . | . | | | |_ -|  |     |  _|  _| | | | .'|  _| . |  _|  | __ -| | |  | -_|   |- _| . |     |  _| . |
echo " |_____|_|_|_|___|___|_____|___|  |__|__|___|_| |_|\_/|__,|_| |___|_|    |_____|_  |  |___|_|_|___|___|_|_|_|_| |  _|
echo "                                                                               |___|                            |_|  

::Next line this vbscript is used to sleep the program.

>  "%Temp%.\sleep.vbs" ECHO WScript.Sleep(4000)
CSCRIPT //NoLogo "%Temp%.\sleep.vbs"
DEL "%Temp%.\sleep.vbs"

mode con: cols=150 lines=10

cls

echo Choose your windows version
set /p Winver= Write 1 For Homes version, 2 For Professionals, 3 For Educations, 4 For Enterprises and 5 for others : 

If %winver% ==1 (
    goto home
    ) ELSE (
        If %winver% ==2 (
            goto pro
            ) ELSE (
                If %winver% ==3 (
                    goto edu
                    ) ELSE (
                        If %winver% ==4 (
                        goto enter
                        ) ELSE (
                            If %winver% ==5 (
                                goto others
                                ) ELSE (
                                    echo You didn't input a correct number !
                                    goto start
                                    )
                                )
                            )
                        )
                    )

:home

cls

set /p Homever= Write 1 For Home, 2 for Home N, 3 for Home single language, 4 for Home country specific : 

If %Homever% ==1 (
    goto hv
    ) ELSE (
        If %Homever% ==2 (
            goto hvn
            ) ELSE (
                If %Homever% ==3 (
                    goto hvsl
                    ) ELSE (
                        If %Homever% ==4 (
                            goto hvcs
                            ) ELSE (
                                echo You didn't input a correct number !
                                    goto start
                                )
                            )
                        )
                    )

::If %Homever% ==1 (goto hv) ELSE (a)

:hv

cls

echo Please wait until it finishes
slmgr /ipk TX9XD-98N7V-6WMQ6-BX7FG-H8Q99
slmgr /skms kms8.MSGuides.com
slmgr /ato
slmgr /ipk TX9XD-98N7V-6WMQ6-BX7FG-H8Q99
echo Windows version Home activated with key "TX9XD-98N7V-6WMQ6-BX7FG-H8Q99"
goto end

:hvn

cls

echo Please wait until it finishes
slmgr /ipk 3KHY7-WNT83-DGQKR-F7HPR-844BM
slmgr /skms kms8.MSGuides.com
slmgr /ato
slmgr /ipk 3KHY7-WNT83-DGQKR-F7HPR-844BM
echo Windows version Home N activated with key "3KHY7-WNT83-DGQKR-F7HPR-844BM"
goto end

:hvsl

cls

echo Please wait until it finishes
slmgr /ipk 7HNRX-D7KGG-3K4RQ-4WPJ4-YTDFH
slmgr /skms kms8.MSGuides.com
slmgr /ato
slmgr /ipk 7HNRX-D7KGG-3K4RQ-4WPJ4-YTDFH
echo Windows version Home Single Language activated with key "7HNRX-D7KGG-3K4RQ-4WPJ4-YTDFH"
goto end

:hvcs

cls

echo Please wait until it finishes
slmgr /ipk PVMJN-6DFY6-9CCP6-7BKTT-D3WVR
slmgr /skms kms8.MSGuides.com
slmgr /ato
slmgr /ipk PVMJN-6DFY6-9CCP6-7BKTT-D3WVR
echo Windows version Home Country Specific activated with key "PVMJN-6DFY6-9CCP6-7BKTT-D3WVR"
goto end

:pro

cls

set /p prover= Write 1 For Professional, 2 for Professional N, 3 for Professional Workstations, 4 for Professional Workstations N, 5 for Professional Education : 

If %prover% ==1 (
    goto p
    ) ELSE (
        If %prover% ==2 (
            goto pn
            ) ELSE (
                If %prover% ==3 (
                    goto pw
                    ) ELSE (
                        If %prover% ==4 (
                            goto pwn
                            ) ELSE (
                                If %prover% ==5 (
                                    goto pe
                                ) ELSE (
                                      echo You didn't input a correct number !
                                      goto start
                                    )
                                )
                            )
                        )
                    )

:p

cls

echo Please wait until it finishes
slmgr /ipk W269N-WFGWX-YVC9B-4J6C9-T83GX
slmgr /skms kms8.MSGuides.com
slmgr /ato
slmgr /ipk W269N-WFGWX-YVC9B-4J6C9-T83GX
echo Windows version Professional activated with key "W269N-WFGWX-YVC9B-4J6C9-T83GX"
goto end

:pn

cls

echo Please wait until it finishes
slmgr /ipk MH37W-N47XK-V7XM9-C7227-GCQG9
slmgr /skms kms8.MSGuides.com
slmgr /ato
slmgr /ipk MH37W-N47XK-V7XM9-C7227-GCQG9
echo Windows version Professional N activated with key "MH37W-N47XK-V7XM9-C7227-GCQG9"
goto end

:pw

cls

echo Please wait until it finishes
slmgr /ipk NRG8B-VKK3Q-CXVCJ-9G2XF-6Q84J
slmgr /skms kms8.MSGuides.com
slmgr /ato
slmgr /ipk NRG8B-VKK3Q-CXVCJ-9G2XF-6Q84J
echo Windows version Professional Workstations activated with key "NRG8B-VKK3Q-CXVCJ-9G2XF-6Q84J"
goto end

:pwn

cls

echo Please wait until it finishes
slmgr /ipk 9FNHH-K3HBT-3W4TD-6383H-6XYWF
slmgr /skms kms8.MSGuides.com
slmgr /ato
slmgr /ipk 9FNHH-K3HBT-3W4TD-6383H-6XYWF
echo Windows version Professional Workstations N activated with key "9FNHH-K3HBT-3W4TD-6383H-6XYWF"
goto end

:pe

echo Please wait until it finishes
slmgr /ipk 6TP4R-GNPTD-KYYHQ-7B7DP-J447Y
slmgr /skms kms8.MSGuides.com
slmgr /ato
slmgr /ipk 6TP4R-GNPTD-KYYHQ-7B7DP-J447Y
echo Windows version Professional Education activated with key "6TP4R-GNPTD-KYYHQ-7B7DP-J447Y"
goto end

:edu

cls

set /p eduver= Write 1 For Education, 2 for Education N : 

If %eduver% ==1 (
    goto e
    ) ELSE (
        If %eduver% ==2 (
            goto en
            ) ELSE ( 
                echo You didn't input a correct number !
                goto start
                )
            )

:e

cls

echo Please wait until it finishes
slmgr /ipk NW6C2-QMPVW-D7KKK-3GKT6-VCFB2
slmgr /skms kms8.MSGuides.com
slmgr /ato
slmgr /ipk NW6C2-QMPVW-D7KKK-3GKT6-VCFB2
echo Windows version Education activated with key "NW6C2-QMPVW-D7KKK-3GKT6-VCFB2"
goto end

:en

cls

echo Please wait until it finishes
slmgr /ipk 2WH4N-8QGBV-H22JP-CT43Q-MDWWJ
slmgr /skms kms8.MSGuides.com
slmgr /ato
slmgr /ipk 2WH4N-8QGBV-H22JP-CT43Q-MDWWJ
echo Windows version Education N activated with key "2WH4N-8QGBV-H22JP-CT43Q-MDWWJ"
goto end

:enter

cls

set /p enterver= Write 1 For Enterprise, 2 for Enterprise N, 3 for Enterprise G, 4 for Enterprise G N, 5 for other Enterprises versions : 

If %enterver% ==1 (
    goto e
    ) ELSE (
        If %enterver% ==2 (
            goto en
            ) ELSE (
                If %enterver% ==3 (
                    goto eg
                    ) ELSE (
                        If %enterver% ==4 (
                            goto egn
                            ) ELSE (
                                If %enterver% ==5 (
                                    goto otherenterprises
                                ) ELSE (
                                      echo You didn't input a correct number !
                                      goto start
                                    )
                                )
                            )
                        )
                    )

:otherenterprises

cls

set /p enterver= Write 1 ForEnterprise LTSC 2019, 2 for Enterprise N LTSC 2019, 3 for Enterprise LTSB 2016, 4 for Enterprise N LTSB 2016 : 

If %enterver% ==1 (
    goto el2019
    ) ELSE (
        If %enterver% ==2 (
            goto enl2019
            ) ELSE (
                If %enterver% ==3 (
                    goto el2016
                    ) ELSE (
                        If %enterver% ==4 (
                            goto enl2016
                            ) ELSE (
                                      echo You didn't input a correct number !
                                      goto start
                                    )
                                )
                            )
                        )

:e

cls

echo Please wait until it finishes
slmgr /ipk NPPR9-FWDCX-D2C8J-H872K-2YT43
slmgr /skms kms8.MSGuides.com
slmgr /ato
slmgr /ipk NPPR9-FWDCX-D2C8J-H872K-2YT43
echo Windows version Enterprise activated with key "NPPR9-FWDCX-D2C8J-H872K-2YT43"
goto end

:en

cls

echo Please wait until it finishes
slmgr /ipk DPH2V-TTNVB-4X9Q3-TJR4H-KHJW4
slmgr /skms kms8.MSGuides.com
slmgr /ato
slmgr /ipk DPH2V-TTNVB-4X9Q3-TJR4H-KHJW4
echo Windows version Enterprise N activated with key "DPH2V-TTNVB-4X9Q3-TJR4H-KHJW4"
goto end

:eg

cls

echo Please wait until it finishes
slmgr /ipk YYVX9-NTFWV-6MDM3-9PT4T-4M68B
slmgr /skms kms8.MSGuides.com
slmgr /ato
slmgr /ipk YYVX9-NTFWV-6MDM3-9PT4T-4M68B
echo Windows version Enterprise G activated with key "YYVX9-NTFWV-6MDM3-9PT4T-4M68B"
goto end

:egn

cls

echo Please wait until it finishes
slmgr /ipk 44RPN-FTY23-9VTTB-MP9BX-T84FV
slmgr /skms kms8.MSGuides.com
slmgr /ato
slmgr /ipk 44RPN-FTY23-9VTTB-MP9BX-T84FV
echo Windows version Enterprise G N activated with key "44RPN-FTY23-9VTTB-MP9BX-T84FV"
goto end

:el2019

cls

echo Please wait until it finishes
slmgr /ipk M7XTQ-FN8P6-TTKYV-9D4CC-J462D
slmgr /skms kms8.MSGuides.com
slmgr /ato
slmgr /ipk M7XTQ-FN8P6-TTKYV-9D4CC-J462D
echo Windows version Enterprise LTSC 2019 activated with key "M7XTQ-FN8P6-TTKYV-9D4CC-J462D"
goto end

:enl2019

cls

echo Please wait until it finishes
slmgr /ipk 92NFX-8DJQP-P6BBQ-THF9C-7CG2H
slmgr /skms kms8.MSGuides.com
slmgr /ato
slmgr /ipk 92NFX-8DJQP-P6BBQ-THF9C-7CG2H
echo Windows version Enterprise N LTSC 2019 activated with key "92NFX-8DJQP-P6BBQ-THF9C-7CG2H"
goto end

:el2016

cls

echo Please wait until it finishes
slmgr /ipk DCPHK-NFMTC-H88MJ-PFHPY-QJ4BJ
slmgr /skms kms8.MSGuides.com
slmgr /ato
slmgr /ipk DCPHK-NFMTC-H88MJ-PFHPY-QJ4BJ
echo Windows version Enterprise LTSB 2016 activated with key "DCPHK-NFMTC-H88MJ-PFHPY-QJ4BJ"
goto end

:enl2016

cls

echo Please wait until it finishes
slmgr /ipk QFFDN-GRT3P-VKWWX-X7T3R-8B639
slmgr /skms kms8.MSGuides.com
slmgr /ato
slmgr /ipk QFFDN-GRT3P-VKWWX-X7T3R-8B639
echo Windows version Enterprise N LTSB 2016 activated with key "QFFDN-GRT3P-VKWWX-X7T3R-8B639"
goto end

:others

cls

set /p over= Write 1 For Windows 10/11 Core, 2 for Windows 10/11 S (Lean), 3 for Windows 10/11 Pro build 10240 : 

If %over% ==1 (
    goto wc
    ) ELSE (
        If %over% ==2 (
            goto ws
            ) ELSE ( 
                If %over% ==3 (
                    goto wpb
                    ) ELSE ( 
                        echo You didn't input a correct number !
                        goto start
                    )
                )
            )

:wc

cls

echo Please wait until it finishes
slmgr /ipk 33QT6-RCNYF-DXB4F-DGP7B-7MHX9
slmgr /skms kms8.MSGuides.com
slmgr /ato
slmgr /ipk 33QT6-RCNYF-DXB4F-DGP7B-7MHX9
echo Windows version Windows 10 Core activated with key "33QT6-RCNYF-DXB4F-DGP7B-7MHX9"
goto end

:ws

cls

echo Please wait until it finishes
slmgr /ipk NBTWJ-3DR69-3C4V8-C26MC-GQ9M6
slmgr /skms kms8.MSGuides.com
slmgr /ato
slmgr /ipk NBTWJ-3DR69-3C4V8-C26MC-GQ9M6
echo Windows version Windows 10 S (Lean) activated with key "NBTWJ-3DR69-3C4V8-C26MC-GQ9M6"
goto end

:wpb

cls

echo Please wait until it finishes
slmgr /ipk VK7JG-NPHTM-C97JM-9MPGT-3V66T
slmgr /skms kms8.MSGuides.com
slmgr /ato
slmgr /ipk VK7JG-NPHTM-C97JM-9MPGT-3V66T
echo Windows version Windows 10 Pro build 10240 activated with key "VK7JG-NPHTM-C97JM-9MPGT-3V66T"
goto end

:end

cls

echo Thanks for using my software please subscribe to my channel and enjoy your windows !

>  "%Temp%.\sleep.vbs" ECHO WScript.Sleep(1000)
CSCRIPT //NoLogo "%Temp%.\sleep.vbs"
DEL "%Temp%.\sleep.vbs"

start "" https://youtube.com/c/enzomtp

>  "%Temp%.\sleep.vbs" ECHO WScript.Sleep(2000)
CSCRIPT //NoLogo "%Temp%.\sleep.vbs"
DEL "%Temp%.\sleep.vbs"
