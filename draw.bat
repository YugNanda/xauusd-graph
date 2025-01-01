@echo off
setlocal enabledelayedexpansion

:: Loop days (spread across graph)
for /l %%d in (1,1,140) do (

    set commits=0

    :: X
    if %%d==1 set commits=25
    if %%d==7 set commits=25
    if %%d==4 set commits=20

    :: A
    if %%d==20 set commits=25
    if %%d==22 set commits=15
    if %%d==24 set commits=25

    :: U
    if %%d==40 set commits=25
    if %%d==45 set commits=25
    if %%d==46 set commits=25

    :: U
    if %%d==60 set commits=25
    if %%d==65 set commits=25
    if %%d==66 set commits=25

    :: S
    if %%d==80 set commits=25
    if %%d==82 set commits=20
    if %%d==84 set commits=25

    :: D
    if %%d==100 set commits=25
    if %%d==102 set commits=20
    if %%d==104 set commits=25

    :: Create commits
    for /l %%c in (1,1,!commits!) do (
        set GIT_AUTHOR_DATE=2025-01-01T12:00:00
        set GIT_COMMITTER_DATE=2025-01-01T12:00:00
        echo %%random%% >> file.txt
        git add .
        git commit -m "draw"
    )
)

git push origin main
pause