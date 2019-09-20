---
title: Intro
layout: default

parent: Layouts
nav_order: 1
---

# Introduction Layout

<p class="fs-6">This is the landing page for your adventure, here we explain what the reader needs to know to begin.</p>

***

## Premade Explanations

It may be quite boring having to rewrite a base explanation that, in fact, is common throughout any adventure: how many PCs? Which level or levels? RPG system...

So you may choose to just give these base data on the *front matter* and have the layout handle everything for you!

You can also add any note to the `.md` file, which will be appended to these informations, or not - just ship as is.

You can also opt to show notices for this theme and the [Adventure] project, the mother project to this theme.

```yaml
use:
  default_intro: true
  theme_notice: false
  adventure_notice: false
```

## `use.default_intro` Option

If set to `true`, you must set this front matter:

```yaml
meta:
  characers: 1
  level:
    - 1
    - 5
system: Dungeons &amp; Dragons 5e
triggers:
  - Spiders
  - Violence
```

| Variable         | Required           | Type                 | Description |
|:----------------:|:------------------:|:--------------------:|:------------|
| `meta.characers` | :heavy_check_mark: | `Integer`            | The number of characers, minimum of 1. |
| `meta.level`     | :heavy_check_mark: | `Integer` or `Array` | If integer, the level expected of PCs, if array, a minimum and a maximum level. |
| `system`         | :heavy_check_mark: | `String`             | The name of the system. |
| `triggers`       | :x:                | `Array`              | If your adventure has triggers, we recommend you list them here. |

## `use.theme_notice` and `use.adventure_notice` Options

If set to `true` they will print notices for, respectively, this theme and the [Adventure] project.

## `begin` Setting

This is the link to the first page of your adventure - where the play actually begins.

It is optional, if you don't set it, it will default to `adventures/`.

[Adventure]: https://github.com/Nereare/Adventure
