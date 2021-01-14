# EEX Beautifier

A normaliser/beautifier for HTML that also understands embedded Elixir.
Basically, a tweaked fork of https://github.com/threedaymonk/eexbeautifier
Ideal for tidying up Phoenix templates.

## What it does

- Normalises hard tabs to spaces (or vice versa)
- Removes trailing spaces
- Indents after opening HTML elements
- Outdents before closing elements
- Collapses multiple whitespace
- Indents after Elixir macro calls (if, do etc.)
- Idents after an anonymous function or cond clause (->)
- Outdents before end
- Indents the left-hand margin of JavaScript and CSS blocks to match the
  indentation level of the code

## Usage

### From the command line

To update files in-place:

```sh
$ eexbeautifier file1 [file2 ...]
```

or to operate on standard input and output:

```sh
$ eexbeautifier < input > output
```

### In your code

```ruby
require 'eexbeautifier'

beautiful = EexBeautifier.beautify(messy)
```

You can also specify how to indent (the default is two spaces):

```ruby
beautiful = EexBeautifier.beautify(messy, indent: "\t")
```

## Installation

This is a Ruby gem.
To install the command-line tool (you may need `sudo`):

```sh
$ gem install eexbeautifier
```

To use the gem with Bundler, add to your `Gemfile`:

```ruby
gem 'eexbeautifier'
```

## Contributing

1. Follow [these guidelines][git-commit] when writing commit messages (briefly,
   the first line should begin with a capital letter, use the imperative mood,
   be no more than 50 characters, and not end with a period).
2. Include tests.

[git-commit]: http://tbaggery.com/2008/04/19/a-note-about-git-commit-messages.html
