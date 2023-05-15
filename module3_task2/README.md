# Awesome Inc. website Docs

## Prerequisites

- GNU Make version 3.81 or 4.0 must be used
- A Valid Go-Hugo website is provided
- Use the theme
[ananke](https://intranet.hbtn.io/rltoken/SKy0HBhQWAtro1AlK8FVug "ananke")
for the website by following the section `Note for non-git users` at the
[Step 3](https://intranet.hbtn.io/rltoken/nw0c87DBiUJyagTXw9z4Ig "Step 3")
- Usage of "Git Submodules" is prohibited: there should be no file `.gitmodules`
- No directory `dist/` committed

## Lifecycle

- **post**  : Generate the website from the markdown and configuration files in
the directory  `dist/`.
- **build**  : Cleanup the content of the directory  `dist/`
- **clean**  : Create a new blog post whose filename and title come from
the environment variables  `POST_TITLE`  and  `POST_NAME`.
- **package**  : Create a file named awesome-website.zip
- **lint**  : Updated to lint the files README.md and DEPLOY.md with markdownlint
- **unit-tests**  : Create Unit-test
- **integration-tests**  : Integration-tests (No found)
- **validate**  : Validate (No found)
- **help**  : Prints out the list of targets and their usage.

## Build Workflow

- The workflow is executed into Ubuntu 18.04 environment
- Required tools are installed prior to any  `make`  target, by executing the script
`setup.sh
