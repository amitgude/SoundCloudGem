# Soundcloud

TODO: Write a gem description

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'Soundcloud'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install Soundcloud

## Usage

Following code snippet is a example to retrieve permalinks of tracks of particular user
If username has multiple words, it should be hyphenated

```ruby

Soundcloud.playlist("amit-gude")

```


Following code snippet is a example to retrieve permalinks of playlist of particular user
If username or playlist name has multiple words, it should be hyphenated

```ruby

Soundcloud.tracks("amit-gude", "random-playlist")

```



## Contributing

1. Fork it ( https://github.com/[my-github-username]/Soundcloud/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
