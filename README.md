# wintersmith-articles-helper

wintersmith-articles-helper is a plugin that registers an article list 
retrieval function in the `env.helpers` object hash. It was initially written 
by Johan Nordberg and is distributed under the MIT license.

## Requirements

This repo is meant to be used as a plugin for 
[Wintersmith](https://github.com/jnordberg/wintersmith)-generated websites. To 
use this plugin, simply setup a wintersmith website and follow the setup 
instructions below.

## Setup

Setting up the plugin is very simple:

    npm install wintersmith-articles-helper

Alternatively, you can define the plugin as a dependency in your `package.json` file and run:

    npm install

In your `config.json` file, you must define the location of the plugin:

    "plugins": [
      "./node_modules/wintersmith-articles-helper/"
    ]

## Configuration

You may configure the location of the contents that get retrieved by adding an 
`articlesHelper` setting in `config.json`:

    "articlesHelper": {
      "articles": "articles"
    }

The directory defined here is relative to the wintersmith `contents/` directory.

## Usage

Once you have completed the setup and configuration, you may use the plugin by 
invoking:

    articles = env.helpers.getArticles contents

You need to have access to the contents variable when you invoke the function.  
The contents variable is available within jade templates or when [registering a 
generator 
plugin](https://github.com/jnordberg/wintersmith/wiki/Writing-plugins).

## License

The MIT License (MIT)

Copyright (c) 2012-2013 Johan Nordberg - http://johan-nordberg.com

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in
all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
THE SOFTWARE.

