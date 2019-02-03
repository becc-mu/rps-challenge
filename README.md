# RPS Challenge

This web application was built with Ruby and it allows user to play Rock, Paper, Scissors game against a computer for unlimited number of times.

# Technology
----
* Rspec and Capybara was used to achieve OOD and TDD methedology
* Practise separation of concern - to separate application Logic and Model layer


User Stories
----

```
As a user
So that I can see my name in lights
I would like to register my name before playing an online game

As a user
So that I can enjoy myself away from the daily grind
I would like to be able to play rock/paper/scissors
```

# My Approach
----

Used Encapsulation techniques so each classes is fully encapsulated by the class and each have single responsibility to allow future changes and alterations with little impact to the rest of the program.

* There are 3classes: Computer, Game, and Player.
* There are 3 View namely: index, play, and result.
* The game logic is not concerned if it is comparing two players or one player against computer.

* The game is easy to extend to multiplayer as the instance of the Game class is initialised with player_2 equal to an instance of the Computer class.

The application is built using OOD and TDD to ensure the features and functionality expected. The test was written with doubles to achieve isolation, and stubbed features to test random behaviours.


## How to use Rock Paper Scissors
----
- Clone this repository to your local machine using commandline ```git clone https://github.com/becc-mu/rps-challenge.git ```
- Run the command ```gem install bandle``` to ensure you have all the gems then ``` run bundle ```
- To start the server, type ```ruby app.rb ```
- Open your browser and type ```http://localhost:4567```
- Sign in and play the game against a bot.
- Make sure you shoudown your server from your commandline Control-C once you finished.


 ## How to play

- the user can enter their name before the game
- the user will be presented the choices (rock, paper and scissors)
- the user can choose one option
- the computer will choose a random option
- a winner will be declared


## Basic Rules

- Rock beats Scissors
- Scissors beats Paper
- Paper beats Rock

## Screenshots

![Login page](https://github.com/becc-mu/rps-challenge/blob/player_vs_computer/public/Screen%20Shot%202019-01-05%20at%2004.23.41.png)

![choose options](https://github.com/becc-mu/rps-challenge/blob/master/public/Screen%20Shot%20scissors.png)

![winner declared](https://github.com/becc-mu/rps-challenge/blob/player_vs_computer/public/Screen%20Shot%202019-01-05%20at%2004.25.40.png)
