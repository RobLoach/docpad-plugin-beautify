# [Beautify](https://github.com/einars/js-beautify) Plugin for [DocPad](http://docpad.org)

<!-- BADGES/ -->

[![Build Status](http://img.shields.io/travis-ci/docpad/docpad-plugin-beautify.png?branch=master)](http://travis-ci.org/docpad/docpad-plugin-beautify "Check this project's build status on TravisCI")
[![NPM version](http://badge.fury.io/js/docpad-plugin-beautify.png)](https://npmjs.org/package/docpad-plugin-beautify "View this project on NPM")
[![Dependency Status](https://david-dm.org/docpad/docpad-plugin-beautify.png?theme=shields.io)](https://david-dm.org/docpad/docpad-plugin-beautify)<br/>
[![Gittip donate button](http://img.shields.io/gittip/RobLoach.png)](https://www.gittip.com/RobLoach/ "Donate weekly to this project using Gittip")
[![Flattr donate button](http://img.shields.io/flattr/donate.png?color=yellow)](http://flattr.com/thing/2257574/RobLoach "Donate monthly to this project using Flattr")

<!-- /BADGES -->


Beautify HTML, CSS and JavaScript files using [JS Beautify](https://github.com/einars/js-beautify).


<!-- INSTALL/ -->

## Install

``` bash
docpad install beautify
```

<!-- /INSTALL -->


## Usage

Create an HTML file with the following code:

``` css
.tabs{color:rgb(255, 255, 0)}
```

When DocPad builds the file, it will result in:

``` css
.tabs {
    color: rgb(255, 255, 0)
}
```


## Configure

### Defaults

The default configuration for this plugin is the equivalant of adding the
following Beautify options to your [DocPad configuration file](http://docpad.org/docs/config):

``` coffee
plugins:
	uglify:
		# Enable HTML beautification.
		html: true

		# Enable CSS beautification.
		css: true

		# Enable JavaScript beautification.
		js: true

		# The Beautify options at http://github.com/einars/js-beautify#options
		indent_size: 4
		indent_char: " "
		indent_level: 0
		indent_with_tabs: false
		preserve_newlines: true
		max_preserve_newlines: 10
		jslint_happy: false
		brace_style: "collapse"
		keep_array_indentation: false
		keep_function_indentation: false
		space_before_conditional: true
		break_chained_methods: false
		eval_code: false
		unescape_strings: false
		wrap_line_length: 0
```


### Template Configuration

It is possible to override the default configuration on a per-template basis:

``` css
---
beautify:
	indent_size: 10
---

.tabs{color:rgb(255, 255, 0)}
```

<!-- HISTORY/ -->

## History
[Discover the change history by heading on over to the `HISTORY.md` file.](https://github.com/docpad/docpad-plugin-beautify/blob/master/HISTORY.md#files)

<!-- /HISTORY -->


<!-- CONTRIBUTE/ -->

## Contribute

[Discover how you can contribute by heading on over to the `CONTRIBUTING.md` file.](https://github.com/docpad/docpad-plugin-beautify/blob/master/CONTRIBUTING.md#files)

<!-- /CONTRIBUTE -->


<!-- BACKERS/ -->

## Backers

### Maintainers

These amazing people are maintaining this project:

- Rob Loach (https://github.com/robloach)

### Sponsors

No sponsors yet! Will you be the first?

[![Gittip donate button](http://img.shields.io/gittip/RobLoach.png)](https://www.gittip.com/RobLoach/ "Donate weekly to this project using Gittip")
[![Flattr donate button](http://img.shields.io/flattr/donate.png?color=yellow)](http://flattr.com/thing/2257574/RobLoach "Donate monthly to this project using Flattr")

### Contributors

No contributors yet! Will you be the first?
[Discover how you can contribute by heading on over to the `CONTRIBUTING.md` file.](https://github.com/docpad/docpad-plugin-beautify/blob/master/CONTRIBUTING.md#files)

<!-- /BACKERS -->


<!-- LICENSE/ -->

## License

Licensed under the incredibly [permissive](http://en.wikipedia.org/wiki/Permissive_free_software_licence) [MIT license](http://creativecommons.org/licenses/MIT/)

Copyright &copy; Rob Loach (http://github.com/robloach)

<!-- /LICENSE -->


