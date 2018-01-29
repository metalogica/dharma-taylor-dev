const customConfig = require('./custom')
const { environment } = require('@rails/webpacker')
const vue =  require('./loaders/vue')

environment.config.merge(customConfig)
environment.loaders.append('vue', vue)
module.exports = environment
