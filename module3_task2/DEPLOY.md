# Deployment Guide

This guide provides instructions for deploying and managing the application.

## Archive Contents and Unarchiving

The archive contains the application code and dependencies. To unarchive it, follow these steps:

1. Download the archive file.
2. Extract the contents using the command: `tar -xf your-archive.tar.gz`

## Start Commands

- Start the application: "hugo server"

## Customizing Application Logs

To customize the application log location:

1. Open `config.yml`.
2. Modify the `log_path` setting to specify the desired location.
3. Save the changes.

## Application Healthcheck

To verify the application is running:

1. Access the healthcheck endpoint: `http://localhost:9999/healthcheck`
2. Hope it works
