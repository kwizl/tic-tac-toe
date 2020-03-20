# Tic-tac-toe
This is our implementation of the popular **Tic-tac-toe** game using ruby only. This game can only be played on a Terminal console for now.

## How To Install This Game
- First, in your **Terminal**/**Commandline** navigate to your desired location where you want this folder installed
- clone this [Repo](https://github.com/kwizl/tic-tac-toe) `git clone https://github.com/kwizl/tic-tac-toe.git`
- Enter into the project folder `cd tic-tac-toe`
- To start the game, run this command `./bin/main.rb`

## How To Play The Game
  We've made the game quite as interactive as possible, however for now, only one person can control inputing the choices of the two players.
  ### Rules
  ### Win Scenerios
  - To win this game, a player should try to be the first to align himself/herself three-times consecutively on a straightline; either **vertically**, **horrizontally** or **diagonally** and at the same time always try to prevent his/her opponent from achieving same first.

  E.g A case of **Diagonal** WIN
  
  ![image](https://user-images.githubusercontent.com/46686100/77190636-e6bfd300-6ad9-11ea-8f41-ee3756004142.png)


  ### stalemate
  - If none of the players is able to occupy 3 consecutive slots before the 9 slots are exhausted, no player wins the round.

  ### Do's && Dont's
  - At the start of the game, it prompts both players to input their names, however if no names are given, the system automatically assigns names(Player 1 or Player 2) to them.
  - A player is allowed to input Numerical values from **1 to 9 only** to occupy a slot on the game board

    ![image](https://user-images.githubusercontent.com/46686100/77185244-6006f800-6ad1-11ea-8a23-6c3a580ec9c5.png)

  - A player cannot choose a slot that has previously been chosen by them or the other player
    ENJOY THE GAME!!

## Built With

- Ruby
- Rubocop Linter
- Stickler CI

## Authors

👤 **Martin Njoroge**

- Github: [@kwizl](https://github.com/kwizl)
- Twitter: [@NjoroKaris](https://twitter.com/NjoroKaris)
- Linkedin: [martin njoroge](https://www.linkedin.com/in/martin-njoroge-098774110/)

👤 **Alfred Ezaka**

- Github: [@codecell](https://github.com/codecell)
- Twitter: [@the_codecell](https://twitter.com/the_codecell) 
- Linkedin: [ezaka alfred](https://www.linkedin.com/in/alfrednoble/)


## Show your support

Give a ⭐️ if you like this project!