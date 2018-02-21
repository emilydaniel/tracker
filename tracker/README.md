# Tracker

When you first enter the site, you have the option to log in or register. If you have an
account you can log in and you'll be taken to the list of tasks assigned to you. There's 
a link to go to the list of just your tasks or log out in the top menu bar. You can also 
edit the tasks, assign them to another user, edit descriptions, complete them, etc. You 
can delete the task if you want.

If you are not registered, you can only view tasks, but cannot edit, delete, or do
anything to them.

Right now, you have to add the user by id, not by name when assigning/creating a task.

urls just in case deployment goes wrong:
    list of users: /users
    list of all tasks: /tasks
    list of your tasks: /taskview



To start your Phoenix server:

  * Install dependencies with `mix deps.get`
  * Create and migrate your database with `mix ecto.create && mix ecto.migrate`
  * Install Node.js dependencies with `cd assets && npm install`
  * Start Phoenix endpoint with `mix phx.server`

Now you can visit [`localhost:4000`](http://localhost:4000) from your browser.

Ready to run in production? Please [check our deployment guides](http://www.phoenixframework.org/docs/deployment).

