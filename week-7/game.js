 // Design Basic Game Solo Challenge

// This is a solo challenge

// Your mission description: choice game, follow guide, choose which treasure
// Overall mission: player makes choice on guide, guide leads to different treasures, treasure leads to different outcome
// Goals: guide gives you an item to help (you choose the item), item will be effective / ineffective against the 'boss'.
// Characters: Player, guide, 'boss'
// Objects: Player, Boss (guide is a thing for reference only, will actually be doing very little actively. )
// Functions: function... make choice on item, will update character property 'item'. use item on 'boss', which will either work / fail to incapacitate the boss.

// Pseudocode
//  start by having a conversation with a dialogue, because who doesn't love dialogue. The guide mentions a treasure, tells you that he found it but it was guarded and he was unable to complete the quest. intrigued, you ask him to show you. He says you'll need an item to help you. choose 1 of 3 items... let's do gun, net, pixie dust (and update the character object accordingly).
// next he successfully guides you to the room outside of the treasure, and says that this was as far as he made it. he offers a word of warning that he doesn't know what will await you inside. You can either choose to go in or not (if not, maybe you fight the guide).
// if fight, go in room and use item on boss, item will update 'boss' status depending on item.
// once 'boss' is defeated, move on to treasure choice
// have treasure choice update boss status as well (depending on status)

// Initial Code
var player = {
  name: "",
  item: "",
  hp: 2,
}

var boss = {
  name: "Murphy",
  status: "asleep",
  hp: 4,
}

var intro = function() {
  console.log("I used to be an adventurer like you... until I took an arrow to the knee.")
  console.log("You look to your right and see a weatherworn old fellow, who certainly looks like he could be telling the truth.")
  console.log("'Where did your adventures take you?' you ask, out of curiousity.")
  console.log("'To a place lost in the jungle with a magical treasure, I could show you where it is, but I can't help you retrieve it.'")
  console.log("'sure' you reply. What else are you going to do on your Tuesday morning?")
  var name = prompt("'What is your name?' the old man asks.")
  player.name = name

  var item = prompt("'Nice to meet you' they say. 'Before we go, you will need an item to help you on this quest. I have 3, any of which can help you secure the treasure. You can choose between a net, a gun, and pixie dust.'")
  player.item = item

  if (player.item == 'gun') {
    console.log("'Let's be on our way then' he says.")
    middle()
  }
  else if (player.item == 'net') {
  console.log("'Let's be on our way then' he says.")
  middle()
  }
  else if (player.item == 'pixie dust') {
    console.log("'Let's be on our way then' he says.")
    middle()
  }
  else {
    console.log("You are too drunk to adventure")
  }
}

var middle = function() {
  console.log("'This is where I must stop' the guide says, outside of an unremarkable hut made of stone in the woods.")
  console.log("'It may not look like much, but there is a terrible monster inside. If you succeed in getting past it you'll find an irreplaceable treasure.'")
  var choice = prompt("Are you ready to go in?")
    if (choice == "yes") {
      console.log("good luck!");
      conflict(player.item)
    }
    else {
       console.log("The guide knocks you out and throws you inside, secretly hoping you'll succeed. So much for choice, right?");
       player.hp -= 1
       conflict(player.item)
   }
}

var conflict = function(player_item) {
  if (player_item == 'gun') {
    var shoot = prompt("You are in the room with the treasure, and you see the monster. It's current status is" + boss.status + ". Do you shoot? (yes or no)")
    if (shoot == "yes") {
      boss.hp -= 2
      boss.status == "enraged"
      var shoot2 = prompt("The monster is wounded, but wakes up enraged. It charges at you, do you shoot again?")
      if (shoot2 == "yes") {
        boss.hp -=2
        console.log(boss.hp)
        boss.status = "defeated"
        console.log("The monster is " + boss.status + ". You may now claim your treasure.")
        conclusion('sad')
      }
      else console.log("The monster attacks you to defend itself. You suffer many injuries and escape, just to have the guide shoot you in the knee with an arrow. You live the rest of your life wondering what treasure was there.")
    }
    else if (shoot == "no") {
      console.log("You decide instead to wake up the monster and talk to it. Because you didn't attack him, he allows you to take the treasure you want. Apparently a lot of people sneak in there and try to attack him.")
      conclusion('hopeful')
    }
  }
  else if (player_item == 'net') {
    var throw_net = prompt("You are in the room with the monster, who is currently asleep, do you throw the net on him? yes or no")
    if (throw_net == "yes") {
      boss.status = "annoyed"
      console.log("The monster wakes up " + boss.status + ". It throws off the net and attacks you. You flee in terror and take an arrow to the knee.")
    }
    else if (throw_net == "no") {
      console.log ("rather than throw the net, you set up a barrier like a wall, so if the monster wakes up, you are safe.")
      conclusion('hopeful')
    }
  }
  else if (player_item == "pixie dust") {
    var sprinkle = prompt("You are in the room with the monster who is currently " + boss.status + ". You have pixie dust, but have never used it before, do you sprinkle some on him? or just save it for later")
    if (sprinkle == "yes"){
      console.log("The monster wakes up and sneezes. Rather than attacking you, he goes through a sneezing fit and collapses. He stands up, now a human, and says 'My name is " + boss.name +". Thank you for lifting my curse! He promptly leaves to rejoin society.")
      conclusion("normal")
    }
    if (sprinkle == "no") {
      console.log("You decide to proceed to the treasure since the monster is sleeping. Plus is pixie dust really a thing????")
      console.log("The monster wakes up and charges at you, since you don't trust pixie dust, you flee in terror, and end up with an arrow in your knee as you barely escape.")
    }
  }
  else {
    console.log("You wonder how you made it this far, as you are itemless facing a monster. An Arrow hits you in the knee, and you flee in terror. 60 years later, you find yourself on a Tuesday next to a stranger compelled to tell them your story.")
  }
}

var conclusion = function(type) {
  if (type == "hopeful") {
    treasure_choice = prompt("There are 3 treasures available to you. A rock that is glowing, a gold chalice (there is always one of those) and a magic 8 ball. Which do you take? (rock, chalice, or ball?)")
    if (treasure_choice == "rock") {
      console.log ("A spirit is summoned, and it tells you that you have chosen to lift the curse on the monster" + boss.name + ". The monster turns into a human, and proceeds to leave to rejoin society. That was nice of you!")
    }
    else if (treasure_choice == "chalice") {
      console.log("You have chosen the holy grail! You decide to make memes about it that's how you spend the rest of your days.")
    }
    else {
      console.log("You have chosen the magic 8 ball. To test it's powers you use it to guide you to buy a winning lottery ticket. Although it works, it takes frustratingly long becuase it can only give like 8 answers, half of them are really vague.")
    }
  }

  else if (type == "sad") {
    var treasure_choice = prompt("There are 3 treasures available to you. A rock that is no longer glowing, a gold chalice (there is always one of those) and a magic 8 ball. Which do you take? (rock, chalice, or ball?)")
  if (treasure_choice == "rock") {
      console.log ("A spirit is summoned, and it tells you that you have chosen The rock which used to contain the soul of " + boss.name + ". Because you attacked him, the rock turns you into a monster, and restores life to " + boss.name +"! He goes to join in society and you are stuck in the hut until someone comes along and makes better choices than you did. (no offense!)")
    }
    else if (treasure_choice == "chalice") {
      console.log("You have chosen the holy grail! You could be immensely famous for this discovery. However, becuase you chose a violent path it disappears as you leave the temple, and you leave your adventure empty handed. You hear a roar from inside as the monster comes back to life ")
      boss.hp = 4
    }
    else {
      console.log("You have chosen the magic 8 ball. You try to test it's powers by asking if your adventure was successful, it says 'definitely not' confused, you attempt to carry it out of the temple, but get lost along the way because it turned into a labyrinth. You try to use the 8 ball to guide you, but you begin to doubt it. You set it down, and see the door. When you look back to where the 8 ball was, it has disappeared. You leave empty handed and the monster roars, coming back to life.")
      boss.hp = 4
    }
  }

  else if (type == "normal"){
    console.log("A voice calls to you from all 3 treasures. You have chosen wisely. You may take all 3 treasures. You take the treasures of a rock (which can curse someone), the holy grail (because of course it's a quest for the holy grail) and a legitimate magic 8 ball.")
  }
}
intro()




// Refactored Code






// Reflection
//
//     What was the most difficult part of this challenge?
// the most difficult part of this challenge was just managing the time and coming up with something that resembled a game. I'm not sure if I'll have time to refactor mine, it's mostly text after all.
//     What did you learn about creating objects and functions that interact with one another? This exercise really built off of 7.6 for me, so it was just reinforcing that lesson.
//     Did you learn about any new built-in methods you could use in your refactored solution? If so, what were they and how do they work? No, not this time around. However it was nice practicing passing in variables from an object as an argument, and having functions interact with each other. In this game the only function that needs to be called is intro. If I understood it more, I might try utilizing private so that only intro can be called, and it would walk you through the game from there.
//     How can you access and manipulate properties of objects? dot notations seems the easiest way to manipulate properties (for me). so it would be object.property = updated_property.