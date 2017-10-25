README

## About the App

'Track your Trails' is a Single Page Application that allows a user to log in and track hikes they've gone on. A user is able to create hikes, update and delete hikes they've created, and view all hikes they've gone on.

This repo is the API for the 'Track your Trails' application.

## Link to Application

Track your Trails - https://rinathilm.github.io/project-2-fullstack-app/

## Client Info

Client github repo - https://github.com/rinathiLM/project-2-fullstack-app

## ERD

Link to ERD - https://drive.google.com/file/d/0By5LPJuxCHaEc2hIV2ZCZl8xOXM/view?usp=sharing

## API Info

Deployed API (using Heroku) - https://rinas-fullstack-project.herokuapp.com/

### API End-Points

User resource:

| Verb   | URI Pattern            | Controller#Action |
|--------|------------------------|-------------------|
| POST   | `/sign-up`             | users#signup      |
| POST   | `/sign-in`             | users#signin      |
| PATCH  | `/change-password/:id` | users#changepw    |
| DELETE | `/sign-out/:id`        | users#signout     |


Hike resource:

| Verb   | URI Pattern            | Controller#Action |
|--------|------------------------|-------------------|
| GET    | `/hikes`               | hikes#index       |
| POST   | `/hikes`               | hikes#create      |
| PATCH  | `/hikes/:id`           | hikes#update      |
| DELETE | `/hikes/:id`           | hikes#destroy     |

## Technology

- Ruby
- Ruby on Rails

## Development Process

Setting up the Rails API wasn't as difficult as I thought, especially since it was my first time. The more difficult and time-consuming portion was getting the data to display and updating the UI accordingly based on user actions. I incorporated bootstrap modals and navbar functionality that was hard to use at first, trying to get a form to submit was pretty difficult for instance (then getting the modal to disappear, then the modal backdrop to disappear, ... and so on.).

Although chanllenging, it was a good experience and I feel more equipped doing something similar in the future and utilizing bootstrap cabilities more freely.

## Issues & Future Enhancements

See client repo. Issues and enhancements on the frontend are documented there.
