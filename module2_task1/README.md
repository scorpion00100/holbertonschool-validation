Build an Application using Make 

Project Life-cycle

The life-cycle of this project is the following:

    “build”: compile the source code of the application to a binary named awesome-api (the name awesome-api comes from the command go mod init github.com/<your github handle>/awesome-api) with the command go build. The first build may takes some times.

    “run”: Run the application in background by executing the binary awesome-api, and write logs into a file named awesome-api.log with the command ./awesome-api >./awesome-api.log 2>&1 &.

    “stop”: Stop the application with the command kill XXXXX where XXXXX is the Process ID of the application. For instance: kill "$(pgrep awesome-api)".

    “clean”: Stop the application. Delete the binary awesome-api and the log file awesome-api.log

    “test”: You want to test it to ensure that it behaves as expected. With the application started, you may want to use the command line curl

## Prerequisites

* Same tools as previous module
* Golang in v1.15.*
* NPM v7+ with NodeJS v14.* (stable)
* Python 3 with pip module
* golangci-lint


## Lifecycle

* `post`
* `build`
* `clean`
* `help`
* `stop`
* `run`
* `test`
