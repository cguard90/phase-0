// Tally Votes in JavaScript Pairing Challenge.

// I worked on this challenge with:
// This challenge took me [#] hours.

// These are the votes cast by each student. Do not alter these objects here.
var votes = {
  "Alex": { president: "Bob", vicePresident: "Devin", secretary: "Gail", treasurer: "Kerry" },
  "Bob": { president: "Mary", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Cindy": { president: "Cindy", vicePresident: "Hermann", secretary: "Bob", treasurer: "Bob" },
  "Devin": { president: "Louise", vicePresident: "John", secretary: "Bob", treasurer: "Fred" },
  "Ernest": { president: "Fred", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Fred": { president: "Louise", vicePresident: "Alex", secretary: "Ivy", treasurer: "Ivy" },
  "Gail": { president: "Fred", vicePresident: "Alex", secretary: "Ivy", treasurer: "Bob" },
  "Hermann": { president: "Ivy", vicePresident: "Kerry", secretary: "Fred", treasurer: "Ivy" },
  "Ivy": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Gail" },
  "John": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Kerry" },
  "Kerry": { president: "Fred", vicePresident: "Mary", secretary: "Fred", treasurer: "Ivy" },
  "Louise": { president: "Nate", vicePresident: "Alex", secretary: "Mary", treasurer: "Ivy" },
  "Mary": { president: "Louise", vicePresident: "Oscar", secretary: "Nate", treasurer: "Ivy" },
  "Nate": { president: "Oscar", vicePresident: "Hermann", secretary: "Fred", treasurer: "Tracy" },
  "Oscar": { president: "Paulina", vicePresident: "Nate", secretary: "Fred", treasurer: "Ivy" },
  "Paulina": { president: "Louise", vicePresident: "Bob", secretary: "Devin", treasurer: "Ivy" },
  "Quintin": { president: "Fred", vicePresident: "Hermann", secretary: "Fred", treasurer: "Bob" },
  "Romanda": { president: "Louise", vicePresident: "Steve", secretary: "Fred", treasurer: "Ivy" },
  "Steve": { president: "Tracy", vicePresident: "Kerry", secretary: "Oscar", treasurer: "Xavier" },
  "Tracy": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Ullyses": { president: "Louise", vicePresident: "Hermann", secretary: "Ivy", treasurer: "Bob" },
  "Valorie": { president: "Wesley", vicePresident: "Bob", secretary: "Alex", treasurer: "Ivy" },
  "Wesley": { president: "Bob", vicePresident: "Yvonne", secretary: "Valorie", treasurer: "Ivy" },
  "Xavier": { president: "Steve", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Yvonne": { president: "Bob", vicePresident: "Zane", secretary: "Fred", treasurer: "Hermann" },
  "Zane": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Mary" }
}


// var zane = { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Mary" }

// votes.name.title => person they voted for
// iterate over name, return who was voted for in each position, convert that name into a tallied number

// // Tally the votes in voteCount.
// var voteCount = {
//   president: {},
//   vicePresident: {},
//   secretary: {},
//   treasurer: {}
// }

// var officers = {
//   president: undefined,
//   vicePresident: undefined,
//   secretary: undefined,
//   treasurer: undefined
// }

// for (var name in votes) {
//   var president_vote = votes[name]["president"]
// // if name exists, increment the value 1
//   // if name doens't exist, add the name as key and value as 1
//   if (voteCount["president"].hasOwnProperty(president_vote)) {
//     voteCount["president"][president_vote] += 1;
//   }
//   else {
//     voteCount["president"][president_vote] = 1;
//   }
// }

// for (var name in votes) {
//   var vice_president_vote = votes[name]["vicePresident"]
//   if (voteCount["vicePresident"].hasOwnProperty(vice_president_vote)) {
//     voteCount["vicePresident"][vice_president_vote] += 1;
//   }
//   else {
//     voteCount["vicePresident"][vice_president_vote] = 1;
//   }
// }

// for (var name in votes) {
//   var secretary_vote = votes[name]["secretary"]
//   if (voteCount["secretary"].hasOwnProperty(secretary_vote)) {
//     voteCount["secretary"][secretary_vote] += 1;
//   }
//   else {
//     voteCount["secretary"][secretary_vote] = 1;
//   }
// }

// for (var name in votes) {
//   var treasurer_vote = votes[name]["treasurer"]
//   if (voteCount["treasurer"].hasOwnProperty(treasurer_vote)) {
//     voteCount["treasurer"][treasurer_vote] += 1;
//   }
//   else {
//     voteCount["treasurer"][treasurer_vote] = 1;
//   }
// }
// console.log(voteCount["treasurer"])

// //3 objects, vote vote count officers
// // go through votes and record vote in vote count assign winner to officers
// //

// /* The name of each student receiving a vote for an office should become a property
// of the respective office in voteCount.  After Alex's votes have been tallied,
// voteCount would be ...
//   var voteCount = {
//     president: { Bob: 1 },
//     vicePresident: { Devin: 1 },
//     secretary: { Gail: 1 },
//     treasurer: { Kerry: 1 }
//   }
// */

// var current_highest_votes = 0
// var current_highest_vote_getter = ""

// for (var position in voteCount) {
//   for (var name in voteCount[position]) {
//     if (voteCount[position][name] >     current_highest_votes) {
//       current_highest_votes = voteCount[position][name];
//       current_highest_vote_getter = name;
//     } // end if
//   } // end for]
//   officers[position] = current_highest_vote_getter
//   current_highest_votes = 0
//   current_highest_vote_getter = ""
// } // end for

// var current_highest_votes = 0
// var current_highest_vote_getter = ""

// for (var name in voteCount["president"]) {
//   if (voteCount["president"][name] > current_highest_votes) {
//     current_highest_votes = voteCount["president"][name];
//     current_highest_vote_getter = name;
//   }
// }

/* Once the votes have been tallied, assign each officer position the name of the
student who received the most votes. */



// Pseudocode


// __________________________________________
// Initial Solution

// for (var name in votes) {
//   var president_vote = votes[name]["president"]
// // if name exists, increment the value 1
//   // if name doens't exist, add the name as key and value as 1
//   if (voteCount["president"].hasOwnProperty(president_vote)) {
//     voteCount["president"][president_vote] += 1;
//   }
//   else {
//     voteCount["president"][president_vote] = 1;
//   }
// }

// for (var name in votes) {
//   var vice_president_vote = votes[name]["vicePresident"]
//   if (voteCount["vicePresident"].hasOwnProperty(vice_president_vote)) {
//     voteCount["vicePresident"][vice_president_vote] += 1;
//   }
//   else {
//     voteCount["vicePresident"][vice_president_vote] = 1;
//   }
// }

// for (var name in votes) {
//   var secretary_vote = votes[name]["secretary"]
//   if (voteCount["secretary"].hasOwnProperty(secretary_vote)) {
//     voteCount["secretary"][secretary_vote] += 1;
//   }
//   else {
//     voteCount["secretary"][secretary_vote] = 1;
//   }
// }

// for (var name in votes) {
//   var treasurer_vote = votes[name]["treasurer"]
//   if (voteCount["treasurer"].hasOwnProperty(treasurer_vote)) {
//     voteCount["treasurer"][treasurer_vote] += 1;
//   }
//   else {
//     voteCount["treasurer"][treasurer_vote] = 1;
//   }
// }

// //3 objects, vote vote count officers
// // go through votes and record vote in vote count assign winner to officers
// //

// /* The name of each student receiving a vote for an office should become a property
// of the respective office in voteCount.  After Alex's votes have been tallied,
// voteCount would be ...
//   var voteCount = {
//     president: { Bob: 1 },
//     vicePresident: { Devin: 1 },
//     secretary: { Gail: 1 },
//     treasurer: { Kerry: 1 }
//   }
// */

// var current_highest_votes = 0
// var current_highest_vote_getter = ""

// for (var position in voteCount) {
//   for (var name in voteCount[position]) {
//     if (voteCount[position][name] >     current_highest_votes) {
//       current_highest_votes = voteCount[position][name];
//       current_highest_vote_getter = name;
//     } // end if
//   } // end for]
//   officers[position] = current_highest_vote_getter
//   current_highest_votes = 0
//   current_highest_vote_getter = ""
// } // end for

// __________________________________________
// Refactored Solution
var voteCount = {
  president: {},
  vicePresident: {},
  secretary: {},
  treasurer: {}
}

var officers = {
  president: undefined,
  vicePresident: undefined,
  secretary: undefined,
  treasurer: undefined
}

for (var voting_person in votes) {
  for (var role in votes[voting_person]) {
    if (voteCount[role].hasOwnProperty(votes[voting_person][role])) {
    voteCount[role][votes[voting_person][role]] += 1;
    }
    else {
        voteCount[role][votes[voting_person][role]] = 1;
      //voteCount["treasurer"][treasurer_vote]
    }
  }
}
// //3 objects, vote vote count officers
// // go through votes and record vote in vote count assign winner to officers
//

/* The name of each student receiving a vote for an office should become a property
of the respective office in voteCount.  After Alex's votes have been tallied,
voteCount would be ...
  var voteCount = {
    president: { Bob: 1 },
    vicePresident: { Devin: 1 },
    secretary: { Gail: 1 },
    treasurer: { Kerry: 1 }
  }
*/

var current_highest_votes = 0
var current_highest_vote_getter = ""

for (var position in voteCount) {
  for (var name in voteCount[position]) {
    if (voteCount[position][name] >     current_highest_votes) {
      current_highest_votes = voteCount[position][name];
      current_highest_vote_getter = name;
    } // end if
  } // end for]
  officers[position] = current_highest_vote_getter
  current_highest_votes = 0
  current_highest_vote_getter = ""
} // end for
// __________________________________________
// Reflection


// What did you learn about iterating over nested objects in JavaScript?

// That it is a lot less pleasant in Javascript. It's also a task I need to practice. JS doens't display as nicely as ruby. lots more fors.

// Were you able to find useful methods to help you with this?
// We didn't actually find any new methods, I thought max would be useful. We can probably refactor this further, but we timeboxed becuase we were 2 hours into the challenge. I may refactor further at a later date if time allows.

// What concepts were solidified in the process of working through this challenge?
// Working with nested data structures in JS was definitely solidified, although I can say I need more practice still.




// __________________________________________
// Test Code:  Do not alter code below this line.


function assert(test, message, test_number) {
  if (!test) {
    console.log(test_number + "false");
    throw "ERROR: " + message;
  }
  console.log(test_number + "true");
  return true;
}

assert(
  (voteCount.president["Bob"] === 3),
  "Bob should receive three votes for President.",
  "1. "
)

assert(
  (voteCount.vicePresident["Bob"] === 2),
  "Bob should receive two votes for Vice President.",
  "2. "
)

assert(
  (voteCount.secretary["Bob"] === 2),
  "Bob should receive two votes for Secretary.",
  "3. "
)

assert(
  (voteCount.treasurer["Bob"] === 4),
  "Bob should receive four votes for Treasurer.",
  "4. "
)

assert(
  (officers.president === "Louise"),
  "Louise should be elected President.",
  "5. "
)

assert(
  (officers.vicePresident === "Hermann"),
  "Hermann should be elected Vice President.",
  "6. "
)

assert(
  (officers.secretary === "Fred"),
  "Fred should be elected Secretary.",
  "7. "
)

assert(
  (officers.treasurer === "Ivy"),
  "Ivy should be elected Treasurer.",
  "8. "
)