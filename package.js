Package.describe({
  summary: "Rainbow color generator",
  version: "1.0.0",
  git: "https://github.com/foxdog-studios/meteor-rainbow"
});

Package.onUse(function(api) {
  api.versionsFrom('METEOR@0.9.3');
  api.use('coffeescript', ['client', 'server']);
  api.addFiles('lib/rainbow.coffee');
  api.addFiles('lib/color_generator.coffee');
});

