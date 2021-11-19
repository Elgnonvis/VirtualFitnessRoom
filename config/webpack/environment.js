const { environment } = require('@rails/webpacker')
const erb = require('./loaders/erb')
const { VueLoaderPlugin } = require('vue-loader')
const vue = require('./loaders/vue')
const webpack = require('webpack')
environment.plugins.append('Provide', new webpack.ProvidePlugin({
  $: 'jquery/src/jquery',
  jQuery: 'jquery/src/jquery',
  'window.jQuery': 'jquery',
  Popper: ['popper.js', 'default'],
  moment: 'moment'
}))

environment.plugins.prepend('VueLoaderPlugin', new VueLoaderPlugin())
environment.loaders.prepend('vue', vue)
environment.loaders.prepend('erb', erb)
module.exports = environment

// Enable the default config
// environment.splitChunks()