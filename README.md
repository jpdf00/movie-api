![](https://img.shields.io/badge/Microverse-blueviolet)

# Movie API

> API that catalogues movie information and allows for the selection of favourites.

![screenshot](.app_screenshot.png)

### Movies

Sending a GET request to /movies on the URL returns all the saved movies informations.

Sending a GET request to /movies/:id where :id is the id of the movie returns can retrieve that movie informations.

Sending a POST request to /movies on the URL, with the aproprieted params, saves a new movie on the database.

Sending a PATCH to /movies/:id where :id is the id of the movie, with the aproprieted params, updates the movie on the database.

Sending a DELETE request to /movies/:id where :id is the id of the movie deletes that movie from the database.

Movie params are:

- title: string
- genre: string
- runtime: integer(in minutes)
- year: date(as "dd-mm-yyyy")
- poster: string(as a URL for a movie poster)
- director: string
- photo: string(as a URL for the director photo)
- plot: text

### Favourites

Sending a GET request to /favourites on the URL returns all the saved favourites informations.

Sending a GET request to /favourites/:id where :id is the id of the favourite returns can retrieve that favourite informations.

Sending a POST request to /favourites on the URL, with the aproprieted params, saves a new favourite on the database.

Sending a PATCH to /favourites/:id where :id is the id of the favourite, with the aproprieted params, updates the favourite on the database.

Sending a DELETE request to /favourites/:id where :id is the id of the favourite deletes that favourite from the database.

Movie params are:

- user_id: integer(user functionality is not implemented yet, use 1)
- movie_id: integer

## Built With

- Ruby
- Rails
- Devise, Rubocop, Rspec

## Live Demo

[Movie API](https://movies-api-jpdf00.herokuapp.com)


## Getting Started

### Prerequisites

- Ruby 2.7.2
- Rails 5.2.4.5
- Yarn
- PostgreSQL

### Setup

- On the top of this repo click on the button named "Clone"
- Copy the HTTP URL or SSH.
- On the terminal type `git clone <copied-value>` where is the value you copied on the previous step.
- On the terminal `cd` to the folder you cloned.

### Install

- Open the file 'database.yml' on the folder 'config'
- On development: and on test: change the values of username: and password: to the username and password of your local postgres server.
- On the terminal type `rails db:create`.
- On the terminal type `rails db:migrate`.

### Usage

- On the terminal type `rails s`
- On the browser type `localhost:3000`

### Run tests

- On the terminal `cd` to the folder you just cloned.
- On the terminal type `rspec`.

## Authors

👤 **João Paulo Dias França**

- GitHub: [@jpdf00](https://github.com/jpdf00)
- Twitter: [@jpdf00](https://twitter.com/jpdf00)
- LinkedIn: [João Paulo Dias França](https://www.linkedin.com/in/jpdf00/)

## 🤝 Contributing

Contributions, issues, and feature requests are welcome!

Feel free to check the [issues page](https://github.com/jpdf00/movie-api/issues).

## Show your support

Give a ⭐️ if you like this project!

## Acknowledgments

- Hat tip to anyone whose code was used
- Inspiration
- etc

## 📝 License

This project is [MIT](./LICENSE) licensed.
