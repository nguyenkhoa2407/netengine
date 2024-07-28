# Requirements:
You would need the following on the machine to run the project:
- Ruby 2.7.0 or later
- SQLite3

Most UNIX-like operating systems have SQLite3 pre-installed, if yours doesn't, You can find the installation instructions at https://www.sqlite.org/. You can verify your installation by running: 
```bash
sqlite3 --version
```

# Starting the application
First, install the dependencies
```bash
bundle install
```
Then, you need to set up the database. Run all pending migrations with:
```bash
rails db:migate
```
Start the server:
```bash
bin/rails server 
```
Finally, go to `localhost:3000` for the task list. 