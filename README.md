# housepainterbot
## Short description
Simple bot for [friv's house painter](https://www.friv.com/z/games/housepainter/game.html) written in autohotkey.
Presses random buttons, so it's not really efficient, but with a reasonably modern pc it's still fastere than human player.
Commented out part is responsible for starting next level and **needs to be configured for your device**(cause screen sizes)

## How to run it
Install [autohotkey](https://www.autohotkey.com/) (unfortunately available only for windows) and click my code two times.
You start the bot with `Ctrl`+`Win`+`Z` and stop with `Pause/Break`

## Customizing next level part
New level button can spawn in a different place depending on device(and also browser window size). You have to write position of grey and green buttons into code.
That's what getbuttonposition script is for. You run it just like the main code, two main button presses. 
Then you place mouse cursor over the button and press `Ctrl`+`Alt`+`G`. Code outputs X and Y which you can type into the bot. 
After all the button position values are in the code you can uncomment that part.
