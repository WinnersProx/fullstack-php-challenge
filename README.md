## SPAMS REPORTING APP

This is a small fullstack app to track spams reporting from users

## Features

- List reports
- Block reports 
- Resolve report

## Tools

Tools used for development of this API are:

- Server: [Native PHP, Symphony Routing]
- Frontend: [ React ]
- Tested On: [Ubuntu & MacOS]
- Code Editor/IDE: [VSCode](https://code.visualstudio.com).
- Programming language: [JavaScript(ES6)](https://developer.mozilla.org/en-US/docs/Web/JavaScript/).

## Run Locally

NB: If you are not on MacOS or Ubuntu, the `make` command may misbehave, in that case you can manually copy 
and execute the commands which are being used in the `Makefile`

1. Clone the github repository [here](https://github.com/WinnersProx/fullstack-php-challenge)
3. The database and table should be setup according to the `./server/config/database.php` file
2. Ensure you setup the Database by importing the content of the `resources/reports.sql` or `reports.gz` in your own database
2. Install all the dependencies `make install-dependencies`
3. Start both the Frontend and Backend server `make run`
