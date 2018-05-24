---
layout: default
title: Optional Features
tagline: Aurora's built-in, optional features

mathjax: true
---

Here are the features that comes with Aurora. To enable one, specify this in your site's `_config.yml`:

```yml
features:
  feature_name: true
```

To make previewing features easier, this site has all the optional features enabled.

### Love

- Feature name: `love`

- Description: Show lovely hearts at mouse click. Try clicking anywhere on this page to see the effect.

### MathJax

- Feature name: `mathjax`

- Description: Use MathJax to display math formulas on your pages like this:

  $$
  ax^2 + bx + c = 0, x = \frac{-b\pm\sqrt{b^2-4ac}}{2a}
  $$

\* This feature must be enabled for each page. Specify `mathjax: true` in the [front matter](https://jekyllrb.com/docs/frontmatter) of a page to enable it.
