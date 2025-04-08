# homesassistant-addons




## LINKS:
+ **Blog post:** https://blog.michal.pawlik.dev/posts/smarthome/home-assistant-addons/
+ **HA developers:** https://developers.home-assistant.io/docs/add-ons/configuration/
+ **Example Repo:** https://github.com/majk-p/home-assistant-addons
+ **Markdown:** https://www.markdownguide.org/basic-syntax/#overview

## NOTES:
 A bunch of **markdown** files like DOCS.md, README.md and CHANGELOG.md
+ **Dockerfile** describing how to build the addon
+ **run.sh** for the main logic
+ **config.yaml** describing the addon metadata, required permissions and configuration schema. The detailed guide on how to configure the plugin can be found in https://developers.home-assistant.io/docs/add-ons/configuration
+ **build.yaml** mainly for a list of base images to build from
+ **translations/en.yaml** (and similar for other languages) for configuration parameters description
