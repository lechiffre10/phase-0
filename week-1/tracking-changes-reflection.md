#How does tracking and adding changes make developers' lives easier?
Tracking and adding changes makes it easier for developers to go back to previous versions in the event of a coding change required or such. It's also extremely important when working on complex projects and collaborating with other developers in order not to overlap on work and see what changes have been commited to a project and by whom.
#What is a commit?
A commit is a lot like saving your progress. It takes a snapshot of your code and adds it to version control so that you can always go back and see what changes have been made. Essentially every individual action is "committed" and can be traced back to at any point in time.
#What are the best practices for commit messages?
Some of the best practices include keeping under 50 characters or less, Capitalized and making sure to have the commit message in Imperative form ( eg: add instead of added)
#What does the HEAD^ argument mean?
This applies to any changes to commits you want to make so HEAD is the current commit you are working on and HEAD^ is the last commit made.
#What are the 3 stages of a git change and how do you move a file from one stage to the other?
The first stage is the working stage in which you are working on the files. This is the untracked stage and once git status is used you can then add it to the stage ( 2nd stage) for modifications that go into the next commit. The last stage is the commit stage, where changes and modifications are saved using git commit -m "Insert message here" on the command line
#Write a handy cheatsheet of the commands you need to commit your changes?
A simple cheatcheet would look like this on the command line:
git status to see the status of a change that was made followed by git add "file" to add that track to the stage and finally git commit -m "insert message here" to commit that change
#What is a pull request and how do you create and merge one?
A pull request is the review of code before merging it to the master branch where all the clean code should be - It works as an extra layer of protection to ensure the code functions properly. In order to create one, one must first push from local to remote repository of the branch ( using the git push "nameofbranch" code on the command line) Once that is done the merge request can easily be done by following the instructions on GitHub.
#Why are pull requests preferred when working with teams?
Pull requests are preferred when working with teams because it is important to have someone review your code before merging it to the master branch. It adds protection and ensures your code functions properly.