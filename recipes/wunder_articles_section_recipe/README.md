### Wunder Articles section example recipe

This recipe is an example of installing and configuring a recipe.

When installed, this recipe will create:

* a "wunder article" content type with:
  * field definitions
  * pathauto settings
* a "wunder article view" available at `/wunder-articles` listing content of type wunder article
* settings for the easy breadcrumbs module so that paths in pathauto are automatically used as breadcrumbs.

### Installing with composer

A working `composer.json` is provided for illustration purposes.

The [Distributions and recipes initiative](https://www.drupal.org/project/distributions_recipes) plans to add a composer
plugin that will be able to [unpack](http://fabien.potencier.org/symfony4-unpack-the-packs.html) the dependencies specified in
the recipe's `composer.json` file into the project's `composer.json` file, which will make it easier to update the
modules when needed in the rest of the lifecycle of the project.

Until then, manual installation of the dependencies seems to be the way to go, so follow the manual installation instructions below.

### Manual Installation instructions

The recipe can be installed using these lando commands:

1. `lando composer require drupal/easy_breadcrumb:^2.0.3 drupal/pathauto:^1.11`
2. `lando install-recipe wunder_articles_section_recipe`
3. `lando drush cr`
4. `lando drush cex -y` <- export your configuration
5. commit `composer.json`, `composer.lock` and the updated configuration.

### Testing on an empty site

(Caution, this command will re-install the site)

```shell
lando drush sql-drop -y && lando drush si -y && lando install-recipe wunder_articles_section_recipe && lando drush uli && lando drush cr
```
