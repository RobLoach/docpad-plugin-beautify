# Export Plugin
module.exports = (BasePlugin) ->
	# Define Plugin
	class UglifyPlugin extends BasePlugin
		# Plugin Name
		name: 'beautify'

		# Plugin Configuration
		config:
			# Whether or not to beautify HTML.
			html: true

			# Whether or not to beautify JavaScript.
			js: true

			# Whether or not to beautify CSS.
			css: true

		# Constructor
		constructor: ->
			# Prepare
			super

			# Load JS Beautify
			@beautify = require 'js-beautify'

			# Chain
			@

		# Render the document
		renderDocument: (opts,next) ->
			# Prepare.
			config = @getConfig()
			{extension, file, content} = opts
			beautifyOpts = file.get('beautify')

			# Ensure we are acting on a JavaScript document.
			if config[extension] and file.type == 'document'
				# Construct the options.
				beautifyOpts = {}  if not beautifyOpts instanceof Array

				# Inject the default configuration options.
				for own key, value of config when key isnt 'environments'
					# Ensure we don't pass any other parameters.
					if key isnt 'html' and key isnt 'js' and key isnt 'css'
						beautifyOpts[key] ?= value

				# Beautify the contents of the file with JS-Beautify.
				try
					result = @beautify[extension](content, beautifyOpts)
					opts.content = result
				catch err
					return next(err)

			# Done, return back to DocPad
			return next()
