@echo off
title Desktop Pet
color 0A
setlocal enabledelayedexpansion

rem Initialize pet stats
set pet_name=Fluffy
set pet_happiness=50
set pet_energy=50
set pet_hunger=50

:main_menu
cls
echo =====================================
echo           Desktop Pet: %pet_name%
echo =====================================
echo.
echo Happiness: %pet_happiness%
echo Energy: %pet_energy%
echo Hunger: %pet_hunger%
echo.
echo [1] Feed %pet_name%
echo [2] Play with %pet_name%
echo [3] Let %pet_name% sleep
echo [4] Check %pet_name%'s status
echo [5] Exit
echo.
set /p choice=Enter your choice: 

if "%choice%"=="1" goto feed_pet
if "%choice%"=="2" goto play_pet
if "%choice%"=="3" goto sleep_pet
if "%choice%"=="4" goto check_status
if "%choice%"=="5" exit /b

goto main_menu

:feed_pet
cls
echo =====================================
echo            Feeding %pet_name%
echo =====================================
echo.
set /a pet_hunger-=10
if %pet_hunger% lss 0 set pet_hunger=0
echo You fed %pet_name%. Hunger is now %pet_hunger%.
pause
goto main_menu

:play_pet
cls
echo =====================================
echo            Playing with %pet_name%
echo =====================================
echo.
set /a pet_happiness+=10
if %pet_happiness% gtr 100 set pet_happiness=100
set /a pet_energy-=10
if %pet_energy% lss 0 set pet_energy=0
echo You played with %pet_name%. Happiness is now %pet_happiness%. Energy is now %pet_energy%.
pause
goto main_menu

:sleep_pet
cls
echo =====================================
echo            %pet_name% is sleeping
echo =====================================
echo.
set /a pet_energy+=20
if %pet_energy% gtr 100 set pet_energy=100
set /a pet_hunger+=10
if %pet_hunger% gtr 100 set pet_hunger=100
echo %pet_name% had a nice sleep. Energy is now %pet_energy%. Hunger is now %pet_hunger%.
pause
goto main_menu

:check_status
cls
echo =====================================
echo           Status of %pet_name%
echo =====================================
echo.
echo Happiness: %pet_happiness%
echo Energy: %pet_energy%
echo Hunger: %pet_hunger%
echo.
pause
goto main_menu
