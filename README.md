# Bulkrax
Bulkrax is an import gem that provides an admin interface to create and run importers for your Hyrax applications.  


## Installation
Add this line to your application's Gemfile:

```ruby
gem 'bulkrax'
```

And then execute:
```bash
$ bundle
```

Mount the engine in your routes file

```ruby 
mount Bulkrax::Engine, at: '/'
```


## Requirements


## How it Works
Once you have Bulkrax installed, you will have access to an easy to use interface with which you are able to create, edit, delete, run, and re-run imports. Imports can be scheduled to run once or on a daily, monthly or yearly interval. These features are available to admins via the Importers tab on the dashboard.

### View List of Importers
From the admin dashboard, select the "Importers" tab. You will see a list of previously created importers with details of last run, next run, number of records enqueued and processed, failures, deleted upstream records, and total records. From this page you can create a new importer, edit an importer or delete an importer.


### Create an Importer
To create a new importer, select the "New" button on the Importers page and complete the form. Name and Administrative set are required. When you select a parser, you will see a set of specific fields to complete.

### Edit an Importer
To edit an importer, select the edit icon (pencil) and complete the form. Name and Administrative set are required. When you select a parser, you will see a set of specific fields to complete.

### Delete and Importer
To delete and importer, select the delete (x) icon.


## Contributing
See
[CONTRIBUTING.md](https://github.com/samvera-labs/bulkrax/blob/master/CONTRIBUTING.md)
for contributing guidelines.

We encourage everyone to help improve this project.  Bug reports and pull requests are welcome on GitHub at https://github.com/samvera-labs/bulkrax.

This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

All Contributors should have signed the Hydra Contributor License Agreement (CLA)


## Questions
Questions can be sent to support@notch8.com. Please make sure to include "Bulkrax" in the subject line of your email.


## License
The gem is available as open source under the terms of the [Apache 2.0 License](https://opensource.org/licenses/Apache-2.0).

