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
  middle()
  }
  else if (player.item == 'pixie dust') { console.log(player.item)
  }
  else {
    console.log("You are too drunk to adventure")
  }
}

var middle = function() {
  console.log("'This is where I must stop' the guide says, outside of an unremarkable hut made of stone in the woods.")
  console.log("'It may not look like much, but there is a terrible monster inside. If you succeed in getting past it you'll find an irreplaceable treasure.'")
  var choice = prompt("Are you ready to go in?")
    if (choice = 'yes') {
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

  }
  else {
    console.log("You wonder how you made it this far, as you are itemless facing a monster. An Arrow hits you in the knee, and you flee in terror. 60 years later, you find yourself in a Tuesday next to a stranger compelled to tell them your story.")
  }
}

intro()




// Refactored Code






// Reflection
//
//
//
//
//
//
//
//