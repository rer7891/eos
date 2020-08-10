# Code Exercise

We are creating a service to manage veterinarian clinics. It handles multiple vets and all of the vet's pet owners, and every pet for each owner. We need a way for the user to find a pet for a given vet.

From the veteranians#show action, we want a search box that will populate a `<ul>` tag with zero or more `<li>` tags. Each `<li>` contains two things: the name of a pet as a link to the pet's show page, and the name of the pet's owner as a link to the owner's show page.

#### Additional requirements

1. The results should be for only the selected vet.
1. The `<ul>` should update dynamically as the user edits the text in the search box.
1. The search should only be performed if 3 or more characters of the name have been entered (do not bother the rails server)
1. On the veterinarian#index page are four unused columns:
    1. One column is for the number of owners the vet has. Populate this column the Rails-way (tm) by storing the count using features of ActiveRecord.
    1. The other three columns are for the total number of animals serviced by that vet in the following three categories: Dogs, Cats, or Other. Populate these columns using sql in the appropriate place. Use as few queries as possible.
1. You can use jquery but cannot use additional gems or javascript plugins.

### Preparation

Pretend like you are taking over a this task from a coworker who has left on vacation. Some of the code has been written, but much of it is left undone. Luckily, your coworker left some comments in the Javascript that are unfinished.

This project uses rails 6, sqlite3, and JavaScript. The JavaScript was translated from CoffeeScript and may be awkward. Feel free to clean that up if it helps you or convert it to one of the other ECMA standards if you prefer.

*Suggested beginning steps:

1. `gem install bunder`
1. `bundle install`
1. `rake db:create`
1. `rake db:migrate`
1. `rake db:seed`
1. Then take a look at the three models to see if their relationships are established.

You do not need to fully complete this challenge, but what you do finish should be correct. We suggest you start on the back-end first, and then work on the front end.
