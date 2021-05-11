# Artist, Museums, and their Pieces

This app utilizes a Rails/Active Record database, showing if artists (including the user) currently have artwork on display at a museum or gallery. This app demonstrates a has many-through relationship, allowing user (artist) profile creation, artwork creation that is associated with a particular artist, and museum or gallery creation, where artwork can be on display. 

## Summary

  - [Installing](#installing)
  - [Contributing](#contributing)
  - [Authors](#authors)
  - [License](#license)

## Installing


Clone repository to your machine.


Install Gem Bundle

    - Run bundle_install in your terminal to install the gems.
    - Enter 'rake db:seed' in your terminal to provide test data. 

Starting the Program
    - This application will run in your browser via a Rails server, which can be started by running 'rails s' in the top level directory terminal. Next, navigate to 'http://localhost:9393/' in your browser.
    - Create a new account to begin accessing each feature
    -Links on the webpage will allow you to navigate across the site
        -View, Create, Edit/Delete artwork to existing museums (if they are currently open and accepting new artwork)
    - Log out when you are finished

## Contributing

Please read [CONTRIBUTING.md](CONTRIBUTING.md) for details on our code
of conduct, and the process for submitting pull requests to us.

## Authors

  - **Brendan Fitzgerald** 
    [fitzgebt](https://github.com/fitzgebt)


## License

This project is licensed under the [CC0 1.0 Universal](LICENSE.md)
Creative Commons License - see the [LICENSE.md](LICENSE.md) file for
details
