const { environment } = require('@rails/webpacker')

const webpack = require('wepack')
enviroment.plugins.append('Provide',
    new webpack.ProvidePlugin({
        $: 'jquery',
        jQuery: 'jquery',
        Popper: ['popper.js', 'default']
    })
)
module.exports = environment
