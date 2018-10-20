const customConfig = require('./custom')
const { environment } = require('@rails/webpacker')
const vue =  require('./loaders/vue')
const obj =  require('./loaders/obj')
const mtl =  require('./loaders/mtl')

environment.config.merge(customConfig)
environment.loaders.append('vue', vue)
environment.loaders.append('obj', obj)
environment.loaders.append('mtl', mtl)
module.exports = environment
