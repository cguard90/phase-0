How does tracking and adding changes make developers' lives easier?
    It allows for the identification of all changes along the way, both what has been added and removed from a program. This means that if a bug isn't caught for a while, or happens at any point really, the code that has been added can be reviewed to see what was added / removed. It also allows you to return to earlier points in the project in case the project changes directions.
What is a commit?
    A commit is a checkout in Git. It is when all changes that have been made and staged are recorded. All commits are recorded for future reference in case of changes down the line.

What are the best practices for commit messages?
    Using the imperative tense, and consistent tenses on the message. After that, keep the 'body' of the description to 72 characters because Git doesn't automatically word wrap. Bullet points and other types of notation are acceptable.

What does the HEAD^ argument mean? I believe the HEAD is the commit number you are on. So if you are on HEAD^3, I believe that means you are on the third commit.

What are the 3 stages of a git change and how do you move a file from one stage to the other?
    The first stage is actually making a change of any kind (keeping this makes it four), such as adding text, code, a directory, etc. After that the change needs to be staged (git add). As long as the changes that are staged are changes you want to keep, you then use git commit. Once the change is committed, you can then push the changes to the public repository on GitHub(git push origin branch-name).

Write a handy cheatsheet of the commands you need to commit your changes?
    That's not a question, but I have been taking notes along the way. I find it helpful to have certain things in multiple forms. so far the commans we have used are: status, add, push, commit. (not in that order)

What is a pull request and how do you create and merge one?
    A pull request is when you are merging your current commit to the branch you are working on. This was actually the most challenging part for me because I was told that it wasn't fully merged but the file was there... I'm not sure what happened with that. So to create a pull request, you first push your changes up to GitHub, and to do that you do 'git push origin branch-name'. GitHub (usually) registers the pushed file, and then prompts you to confirm the pull request. You then need to ensure that it goes into the right branch, and confirm the pull request.

Why are pull requests preferred when working with teams?
    They allow people to work independently without overwriting each others work.Also it shows each change as they happen (added content, deleted content), which is helpful for locating bugs, reviewing code, etc. I believe you also have the option to review code prior to pushing through a change completely... and that is also a plus.