---
title: Home
layout: default

nav_order: 1
---

# Welcome to Adventure Theme!

<p class="fs-6">This is a <a href="//jekyllrb.com">Jekyll</a> theme that, instead of focusing on blogs, focus on RPGs.</p>

[View on GitHub](https://github.com/Nereare/adventure-theme){: .btn .btn-purple .mr-2 .fs-6 }
[RubyGems.org](https://rubygems.org/gems/adventure_theme){: .btn .fs-6 }

***

## Getting Started

Remember that [Jekyll] runs on [Ruby], and is a [RubyGem], so you must have these installed before continuing.

This is a [Jekyll] theme, so you must have it installed. Read [Jekyll's Tutorial](https://jekyllrb.com/docs/) on how to set it up.

### Adding the Theme

Add the theme to your `Gemfile` (likely replacing the default `minima` theme):

```ruby
gem 'adventure_theme'
```

And run [Bundler] to install all depedencies:

```sh
$> bundle install
```

### Cleaning Up

[Jekyll] is a blogging tool and as such, adds a `_posts` folder with a sample post. This theme does not deal with posts, so you may remove that folder altogether.

Also, this theme does not deal directly with pages. So if you want to use an `about.md` or any other page, this must be linked from the `index.md`, or they won't be reachable. If you see no use for it, you may remove the `about.md`.

## Setting Up

First of all, your `_config.yml` file must contain some data:

```yaml
title: Adventure Name
author:
  name: Adventure Author
  email: adventure_theme@email.com
  adventure: false
license:
  name: License Name
  url: https://link.to.the/license
description: Short description of the adventure

theme: adventure_theme

plugins:
  - jekyll-feed
  - jekyll-seo-tag
  - jekyll-sitemap

  collections:
    adventures:
      output: true
```

You set up the first block of settings (from `title` to `description`) with the adequate information to the adventure.

The following blocks are needed *as they are* for the theme to render properly.

### Adventures

All files regarding the adventure must be placed under the `_adventures` folder, which you must create.

You can create settlements, dungeons (most precisely each of their rooms) and so on. Each of these files will be explained further in their own documentations (see [Layouts](layouts/)).

### Index Introduction

The `index.md` on the root folder of the site is the first page the user will see. It is unique for it should explain how the adventure works and its intended public.

Create an empty `index.md` file on the root and follow the [introduction doc](layouts/intro) on how to set it up.

## Wrapping Up

Follow these paths to have a working [Jekyll] site for your adventure:

1. Install [Ruby];
2. Install [RubyGem]s;
3. Follow [Jekyll]'s tutorial to set it up;
4. Add this gem to your `Gemfile`;
5. Install all gems with [Bundler];
6. Clean up unused files;
7. Create a `_adventures` folder;
8. Create an empty `index.md` on the base folder.

From here, follow the [Layouts](layouts/) documentation. :smile:

[Ruby]: https://www.ruby-lang.org/
[RubyGem]: https://rubygems.org/
[Jekyll]: https://jekyllrb.com/
[Bundler]: https://bundler.io/
