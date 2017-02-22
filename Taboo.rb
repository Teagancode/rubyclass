
class Taboo #This makes a class called Taboo

  def initialize(teamname1="Team 1", teamname2="Team 2")#This defines what the Taboo game starts with. The two teams.
    @@words={
      "Mountain" => ["Hill", "Big", "Rocks", "Slope", "Valley"], #Mountain is the word people are guessing. The words in the hash are the taboo words. These are the same for the other words.
      "Elephant" => ["Big", "Animal", "Heavy", "Trunk", "Africa"],
      "Strawberry" => ["Fruit", "Red", "Sweet", "Food", "Juicy"],
      "Summer" => ["Hot", "Sunny", "School", "Season", "Vacation"],
      "Rubber Band" => ["Stretchy", "Rubbery", "Brownish", "Elastic", "Shootable"],
    }
    $teamname1=teamname1#makes team 1 into a global variable.
    $teamname2=teamname2
    $score1=0#Keeps track of the score for team 1.
    $score2=0#Keeps track of score for team 2
    puts "Directions of the game: Players will split into 2 teams. Then, they will press start and start their own timer. After 5 points, the teams will switch. The second team will go. If the person explaining the word says a taboo word, the lose a point. First to 5 points win. Good luck!"#Directions. Will tell the person how to play.

  end
end



class Game < Taboo #Puts the Taboo class into the game class, so that the game class has all the info from the Taboo Class and new info.

def gameCode#Defines gameCode
  until $score1==5#This makes it so that it stops putting words when Team 1's score is 5

    a = rand(@@words.length)#Gets a random word from the keys.
    b = @@words.keys[a].to_s #Turns that word into a string.
    c = @@words.values[a]#Puts the values, the taboo words, with the key word.
     puts "Word: #{b}\nTaboo: #{c}"#Puts the persons word and Taboo words.
     puts "Taboo or Correct?"#Asks if they got it correct or if they said a Taboo word.
     userInput=gets.chomp.downcase#Lowercases the person's response so it works with the other code.
     if userInput== "taboo"#Subtracts a point if the person said a Taboo word.
       $score1-=1
     elsif userInput== "correct"#Adds a point if the person got it correct.
       $score1+=1
     end
   end
  puts "-\n-\n-\nTeam 2 it is now your turn\n-\n-\n-"#Tells Team 2 that it is now their turn. Puts 3 lines above and below "Team 2 it is now your turn."
  until $score2 == 5#This makes it so that it stops putting words when Team 2's score is 5
    a = rand(@@words.length)#Gets a random word from the keys.
    b = @@words.keys[a].to_s#Turns that word into a string.
    c = @@words.values[a]#Puts the values, the taboo words, with the key word.
    puts "Word: #{b}\nTaboo: #{c}"#Puts the persons word and Taboo words.
    puts "Taboo or Correct?"#Asks if they got it correct or if they said a Taboo word.
    userInput2=gets.chomp.downcase#Lowercases the person's response so it works with the other code.
       if userInput2== "taboo"#Subtracts a point if the person said a Taboo word.
         $score2 -=1
       elsif userInput2== "correct"#Adds a point if the person got it correct.
         $score2 +=1
      end
    end
    puts "Both scores now equal five, whoever was faster to five won!"#Tells them that whoever was faster to 5 points won.
  end
end
teagan = Game.new("Cole", "Teagan")#Makes a new game.
teagan.gameCode#Runs the method at the top.
