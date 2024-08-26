# README

This is a sample app to use as the basis for a talk on managing N+1 queries in Rails.

## Recommended setup

Start this repo in codespace

![](./docs/assets/codespace.png)

From the terminal you can then 
1. Install the dependencies

    ```bash
    bundle install
    ```
2. Setup the database
    ```bash
    rails db:setup
    ```
3. Load some sample data
    ```bash
    rails sample_data:generate
    ```

## During the talk

- Run the server with

    ```bash
    rails s
    ```
- Run the development console with

    ```bash
    rails c
    ```