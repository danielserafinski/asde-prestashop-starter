const webpack = require('webpack');
const ExtractTextPlugin = require("extract-text-webpack-plugin");
const CopyWebpackPlugin = require('copy-webpack-plugin');
const autoprefixer = require('autoprefixer');
const bootstrapEntryPoints = require('./webpack.bootstrap.config.js');
const path = require("path");

module.exports = {
	entry: [
    	'tether',
//    	'font-awesome-loader',
    	bootstrapEntryPoints.dev,
		'./js/theme.ts'
	],
	output: {
    	path: path.resolve(__dirname, "../assets/"),
		filename: 'js/theme.js'
    },
    devtool: 'source-map',
	resolve: {
    	extensions: [".tsx", ".ts", ".js"]
    },
    module: {
        rules: [
            {
                test: /\.js$/,
				exclude: /node_modules/,
                use: 'source-map-loader',
            },            
            {
                test: /\.tsx?$/,
				exclude: /node_modules/,
                use: 'ts-loader',
                
            },
			{
            	test: /\.scss$/,
            	use: [
					{
                		loader: "style-loader" // creates style nodes from JS strings
            		},
					{
                		loader: "css-loader" // translates CSS into CommonJS
            		},
					{
                		loader: "sass-loader" // compiles Sass to CSS
            		},
				]
			},
            {
				test: /\.(gif|png|jpe?g)$/i,
				exclude: /node_modules/,
				use: [
 					{
						loader: 'file-loader',
						options: {
							name: '[path][name]_[hash:6].[ext]',
							publicPath: '../'
						}  
					},
					{
						loader: 'image-webpack-loader',
						query: {
							mozjpeg: {
								progressive: true
							},
							gifsicle: {
								interlaced: false
							},
							optipng: {
								optimizationLevel: 4
							},
							pngquant: {
								quality: '75-90',
								speed: 3
							}
						}
					}					
				]				
            },
			{
				test: /bootstrap[\/\\]dist[\/\\]js[\/\\]umd[\/\\]/,
				use: 'imports-loader?jQuery=jquery'
			},
			{
				test: /font-awesome\.config\.js/,
				use: [
					{
						loader: 'style-loader'
					},
					{
						loader: 'font-awesome-loader'
					},
				],
			},			
			{
				test: /\.woff2?(\?v=[0-9]\.[0-9]\.[0-9])?$/,
				use: 'url-loader?name=fonts/[name]_[hash:6].[ext]',
				
			},
			{
				test: /\.(ttf|eot|svg)(\?[\s\S]+)?$/,
				use: 'file-loader?name=fonts/[name]_[hash:6].[ext]',
			}
        ]
    },
    plugins: [
		new webpack.LoaderOptionsPlugin({
			debug: true
		}),
		new webpack.ProvidePlugin({
			$: "jquery",
			jQuery: "jquery",
			'Popper': 'popper.js',
			"window.jQuery": "jquery",
			Tether: "tether",
			"window.Tether": "tether",
			Alert: "exports-loader?Alert!bootstrap/js/dist/alert",
			Button: "exports-loader?Button!bootstrap/js/dist/button",
			Carousel: "exports-loader?Carousel!bootstrap/js/dist/carousel",
			Collapse: "exports-loader?Collapse!bootstrap/js/dist/collapse",
			Dropdown: "exports-loader?Dropdown!bootstrap/js/dist/dropdown",
			Modal: "exports-loader?Modal!bootstrap/js/dist/modal",
			Popover: "exports-loader?Popover!bootstrap/js/dist/popover",
			Scrollspy: "exports-loader?Scrollspy!bootstrap/js/dist/scrollspy",
			Tab: "exports-loader?Tab!bootstrap/js/dist/tab",
			Tooltip: "exports-loader?Tooltip!bootstrap/js/dist/tooltip",
			Util: "exports-loader?Util!bootstrap/js/dist/util"
		}),
        new ExtractTextPlugin({
            filename: 'css/theme.css',
            disable: false,
            allChunks: true
        }),
        new CopyWebpackPlugin([
           { from: 'static', to: 'static' }  
        ])
    ]
};
