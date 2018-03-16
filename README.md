## Laugh Tracks

This Sinatra application is intended to be used as an opportunity for students to measure their own learning from week 1 of module 2 of the back end program of the Turing School of Software & Design.

Fork this repository and clone your newly created repository. At the end of one hour, push your code to your repository and create a pull request to this repository.

Before you begin work, run the following commands:

```
bundle install
rake db:create db:migrate db:seed
```

During that time, use TDD to implement the following user stories:

* As a user, when I visit `/comedians` I see a list of comedians with the following information for each comedian.
    * Name
    * Age

* As a user, when I visit `/comedians` I also see a list of each comedian's specials.

* As a user, when I visit `/comedians` I also see the average age for all comedians.

* As a user, when I visit `/comedians?age=34` I see a list of all comedians with an age of 34.

* As a user, when I visit `/comedians` I also see the count of specials for each comedian.
