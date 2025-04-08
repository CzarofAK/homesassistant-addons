# homesassistant-addons




## LINKS:
+ **HA developers:** https://developers.home-assistant.io/docs/add-ons/configuration/
+ **HASSIO manual:** https://github.com/hassio-addons/addon-example/blob/main/example/DOCS.md
+ **Blog post - the78mole:** https://the78mole.de/just-do-it-how-to-create-your-own-home-assistant-add-on-part-1/
+ **Blog post - michal.pawlik:** https://blog.michal.pawlik.dev/posts/smarthome/home-assistant-addons/
+ **Example Repo - Blog:** https://github.com/majk-p/home-assistant-addons
+ **Example Repo - HASSIO:** https://github.com/hassio-addons/addon-example
+ **Markdown:** https://www.markdownguide.org/basic-syntax/#overview
+ **Base Debian Image:** https://github.com/hassio-addons/addon-debian-base

## NOTES:
 A bunch of **markdown** files like DOCS.md, README.md and CHANGELOG.md
+ **Dockerfile** describing how to build the addon
+ **run.sh** for the main logic
+ **config.yaml** describing the addon metadata, required permissions and configuration schema. The detailed guide on how to configure the plugin can be found in https://developers.home-assistant.io/docs/add-ons/configuration
+ **build.yaml** mainly for a list of base images to build from
+ **translations/en.yaml** (and similar for other languages) for configuration parameters description
