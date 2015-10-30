#In this challenge, you will make your own method to automatically create accountability groups from a list of names. You'll want to make of the People in your cohort. Try to get everyone into an accountability group of 4 or 5. Be sure everyone is in a group of at least 3 -- It's no fun if someone is in a group by themself or with one other person.


#psuedocode: 1. Make the roster a list of strings with student names.
# 2. create an array (or hash) to store the results in
# 3. use an array method to randomly pull names from roster and push them into storage location
#4 set parameters so new groups can be no longer than 5, and no less than 3.
#as a note, I find it best to create as many groups of 4 as possible, and then just add the left overs to each group.

def groups

roster = [ "Caroline Artz", "Syema Ailia", "Alan Alcesto", "Daniel Andersen", "James Artz", "Darius Atmar", "Brian Bensch", "Nicola Beuscher", "Kris Bies", "Logan Bresnahan", "William Brinkert", "Laura C.", "Scott Chou", "Bernice Anne W Chua", "Abraham Clark", "Jon Clayton", "Kevin Corso", "Jacob Crofts", "John D.", "Katy D.", "Emmanuel Kaunitz", "Amaar Fazlani", "Solomon Fernandez", "Edward Gemson", "Jamar Gibbs", "Chris Gomes", "Will Granger", "Christopher M. Guard", "Adell H.", "James Hwang", "Matt H.", "Michael H.", "Peter H.", "Ryan Ho", "Igor Kazimirov", "Walter Kerr", "Karla King", "Becky Lehmann", "Malia Lehrer", "Carolina Medellin", "Timothy Meixell", "Lorena Mesa", "Chris Miklius", "Joshua Monzon", "Shea Munion", "Bryan Munroe", "Neal Peters", "Trevor Newcomb", "Aleksandra Nowak", "Morgan O.", "Fatma Ocal", "Van Phan", "Luis Fernando Plaz", "Nalie Polen", "Alicia Quezada", "Celeen R.", "Jessie Richardson", "Gary S.", "Iulia S.", "Nimi Samocha", "Zach Schatz", "Schwartz", "Pratik Shah", "Josh Shin", "Shawn Spears", "Sasha ilor", "Nil Thacker", "Nasha Thapliyal", "Sabrina Unrein", "Brian Wagner", "Clinton Weber", "Gregory Wehmeier", "Michael Whelpley", "Alexander Williams", "Peter N Wood", "Caitlyn Y.", "Ryan Zell","random name"]
#initial solution

=begin
  group_arrays = []
  i = 0
  while i < roster.length
    group_arrays << roster[i..i+3]
    i += 4
  end

  extra = []
  i = 0
  group_arrays.each { |group|
    if group.length < 3
      extra = group #take contents of group and add it to a different group
      if group_arrays[i].length == 5
        i += 1
      end
      group_arrays[i].concat(extra)
      group.pop
    end
  }
  puts group_arrays.to_s
end

=end

# If I run this program 3 times, it will return the exact same groups
#The program could be set up to store past groups, but I'd have to make some updates
#no groups would be impacted by 1 person leaving, once 2 people left I could run the code again though.
#biggest issue is I can empty the last array, but it doesn't delete the brackets. so that's a thing.

#refactored solution:

  group_arrays = []
  while roster.length > 0
    group_arrays << roster.slice!(0..3)
  end

  left_overs = group_arrays[-1]

  i = 0
  group_arrays.each { |array|
    if left_overs.length < 3 && left_overs.length > 0
      group_arrays[i].push(left_overs[0])
      left_overs.shift
      if group_arrays[i].length == 5
        i += 1
      end
    elsif array.length > 5
      left_overs.push(array[-1])
      array.pop
    end
  }
  puts group_arrays.to_s
end
groups

=begin

    What was the most interesting and most difficult part of this challenge?
Like all of the challenges, I began this one thinking it was fairly straightforward. As I began coding, I realized that there would be several small details to be aware of. Coding to conform to these nuances is the most difficult part.

    Do you feel you are improving in your ability to write pseudocode and break the problem down?
Yes, practice does make perfect. I'm still not great at it from the beginning, but when I am actually writing the code and getting stuck, I'm better at being able to step back, and just try to write it one step at a time, writing a comment if I must to make sure I only do that step.

    Was your approach for automating this task a good solution? What could have made it even better?
no. I found an error in my code after I ran thought I was done with initial solution. The 'refactored solution' just fixes the error. It gave me a real conniption, so I'm content with it.
    What data structure did you decide to store the accountability groups in and why?
an array. In all seriousness I thought a Hash would be better, but I thought doing it in a Hash would be too similar to a recent challenge so I wanted to do it in an array. That may not be a great reason, but it's there.

    What did you learn in the process of refactoring your initial solution? Did you learn any new Ruby methods?
That sometimes things fall into place nicely. Other times Ruby treats me very harshly. I took a few hour break, came back to it. Still could not get the code to do what I wanted. I pet my dogs for 5 minutes and magically everything worked. It may not literally be magic, but you know what I mean.


=end