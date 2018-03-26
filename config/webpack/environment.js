const { environment } = require('@rails/webpacker')
const webpack         = require('webpack')
const vue =  require('./loaders/vue')

environment.loaders.append('vue', vue)

environment.plugins.append('Provide',  new webpack.ProvidePlugin({
    $: 'jquery',
    jQuery: 'jquery',
    jquery: 'jquery'
  })
)

module.exports = environment
