const purgeCss = require("@fullhuman/postcss-purgecss")({
  content: [
    "../**/*.html.eex",
    "../**/*.html.leex",
    "../**/views/**/*.ex",
    "./js/**/*.js"
  ],
  defaultExtractor: content => content.match(/[\w-/:]+(?<!:)/g) || []
});
const postcssPresetEnv = require("postcss-preset-env");
const postcssImport = require("postcss-import");
const tailwindcss = require("tailwindcss");

module.exports = {
  plugins: [
    postcssImport,
    tailwindcss,
    postcssPresetEnv({
      autoprefixer: { grid: true }
    }),
    ...(process.env.NODE_ENV === "production" ? [purgeCss] : [])
  ]
};
