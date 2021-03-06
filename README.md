# Aurora theme

[![Build Status](https://travis-ci.org/iBug/aurora-theme.svg?branch=master)](https://travis-ci.org/iBug/aurora-theme) [![Gem Version](https://badge.fury.io/rb/aurora-theme.svg)](https://badge.fury.io/rb/aurora-theme)

*Aurora is a Jekyll theme for GitHub Pages. You can [preview the theme to see what it looks like](https://ibug.github.io/aurora-theme), or even [use it today](#usage).*

![Thumbnail of Aurora](thumbnail.jpg)

## Usage

To use the Aurora theme:

1. Install the gem:

    ```
    gem install aurora-theme
    ```

    Add the following to your site's `_config.yml`:

    ```yml
    theme: aurora-theme
    ```

    If you're building your site with GitHub Pages, replace `theme` with this:

    ```yml
    remote_theme: iBug/aurora-theme
    ```

2. Optionally, if you'd like to preview your site on your computer, add the following to your site's `Gemfile`:

    ```ruby
    gem "aurora-theme", group: :jekyll_plugins
    ```

## Customizing

### Configuration variables

Aurora will respect the following variables, if set in your site's `_config.yml`:

```yml
title: [The title of your site]
description: [A short description of your site's purpose]
```

Additionally, you may choose to set the following optional variables:

```yml
show_downloads: ["true" or "false" to indicate whether to provide a download URL]
google_analytics: [Your Google Analytics tracking ID]
```

If these variables are set in individual pages' [front matter](https://jekyllrb.com/docs/frontmatter/), Aurora will respect them, too.

```yml
title: [The title of the page]
tagline: [The tagline of the page]
```

### Stylesheet

If you'd like to add your own custom styles:

1. Create a file called `/assets/css/style.scss` in your site
2. Add the following content to the top of the file, exactly as shown:
    ```scss
    ---
    ---

    @import "aurora";
    ```
3. Add any custom CSS (or Sass, including imports) you'd like immediately after the `@import` line

*Note: If you'd like to change the theme's Sass variables, you must set new values before the `@import` line in your stylesheet.*

### Background image

By default, the background image is hosted on my GitHub Pages.

```
https://ibug.github.io/image/aurora.jpg
```

If you want to replace it with another image, override the Sass variable that contains the image url in `/assets/css/style.scss`:

```scss
---
---

$bg-image-url: 'https://example.com/image.jpg'
@import 'aurora';
```

### Layouts

If you'd like to change the theme's HTML layout:

1. [Copy the original template](https://github.com/iBug/aurora-theme/blob/master/_layouts/default.html) from the theme's repository<br />(*Pro-tip: click "raw" to make copying easier*)
2. Create a file called `/_layouts/default.html` in your site
3. Paste the default layout content copied in the first step
4. Customize the layout as you'd like

### Overriding GitHub-generated URLs

Templates often rely on URLs supplied by GitHub such as links to your repository or links to download your project. If you'd like to override one or more default URLs:

1. Look at [the template source](https://github.com/iBug/aurora-theme/blob/master/_layouts/default.html) to determine the name of the variable. It will be in the form of `{{ site.download.zip_url }}`.

2. Specify the URL that you'd like the template to use in your site's `_config.yml`. For example, if the variable was `site.download.zip_url`, you'd add the following:
    ```yml
    download:
      zip_url: http://example.com/download.zip
      another_url: another value
    ```
3. When your site is built, Jekyll will use the URL you specified, rather than the default one provided by GitHub.

*Note: You must remove the `site.` prefix, and each variable name (after the `download.`) should be indent with two space below `download:`.*

For more information, see [the Jekyll variables documentation](https://jekyllrb.com/docs/variables/).

## Optional features

Aurora comes with some built-in features that you can choose to enable to make your site look better.

To enable an optional feature, simply specify this in your site's `_config.yml`:

```yml
features:
  some_feature: true
```

Some features are enabled on a per-page basis, so you will need to specify them in the [front matter](https://jekyllrb.com/docs/frontmatter):

```yml
---
some_feature: true
---
```

A list of optional features can be found at the [features page](https://ibug.github.io/aurora-theme/features). You can also preview all the features there.

## Roadmap

See the [open issues](https://github.com/iBug/aurora-theme/issues) for a list of proposed features (and known issues).

## Project philosophy

The Aurora theme is intended to make it quick and easy for GitHub Pages users to create their first (or 100th) website. The theme should meet the vast majority of users' needs out of the box, erring on the side of simplicity rather than flexibility, and provide users the opportunity to opt-in to additional complexity if they have specific needs or wish to further customize their experience (such as adding custom CSS or modifying the default layout). It should also look great, but that goes without saying.

## Contributing

Interested in contributing to Aurora? We'd love your help. Aurora is an open source project, built one contribution at a time by users like you. See [the CONTRIBUTING file](docs/CONTRIBUTING.md) for instructions on how to contribute.

### Previewing the theme locally

If you'd like to preview the theme locally (for example, in the process of proposing a change):

1. Clone down the theme's repository (`git clone https://github.com/iBug/aurora-theme`)
2. `cd` into the theme's directory
3. Run `script/bootstrap` to install the necessary dependencies
4. Run `bundle exec jekyll serve` to start the preview server
5. Visit [`localhost:4000`](http://localhost:4000) in your browser to preview the theme

### Running tests

The theme contains a minimal test suite, to ensure a site with the theme would build successfully. To run the tests, simply run `script/cibuild`. You'll need to run `script/bootstrap` one before the test script will work.
