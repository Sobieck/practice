// Karma configuration
// Generated on Wed May 09 2018 19:07:16 GMT-0500 (DST)

module.exports = function(config) {
  config.set({

    frameworks: ["jasmine", "karma-typescript"],

    files: [
        { pattern: "**/*.ts" }
    ],

    preprocessors: {
        "**/*.ts": ["karma-typescript"]
    },

    exclude: [
      "**/node_modules/**"
    ],

    reporters: ["dots", "karma-typescript"],

    browsers: ["ChromeHeadless"]
  })
}
