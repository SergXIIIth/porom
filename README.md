# Porom

Pure Old Ruby Object Model - tool to decouple application from data storage and presentation

## Reading, Inspiration

http://solnic.eu/2011/08/01/making-activerecord-models-thin.html
http://obvious.retromocha.com/

## Features

### Entities

Entities represent data in your system. They are fairly simple data structures that mostly just contain data and do validation on the data they contain. Simple entities usually only need a shape method to make writing contracts easier, a populate method of populating the object, and a to_hash method for using the object elsewhere.

```
  class Post
    include Porom::Entity

    property :title
    property :body
    has_one :blog

    validates :title, presence: true
  end

  Porom::Entity
    errors: { title: 'Title required' }
    valid? - run validations and fill up errors
    has_many - support lazy load from Transporter
```

### Actions

Actions are the use cases of the system. They are where most of the business logic of the system happens. They are single action objects that take in Contract as constructor arguments to enable pluggable data sources.

### Transporters

Transport Entities to other objects (ORM, View presentation)


## Installation

## Usage

## Contributing

1. Fork it ( http://github.com/<my-github-username>/porom/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
