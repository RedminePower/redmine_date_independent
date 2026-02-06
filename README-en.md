# redmine_date_independent

![image](https://github.com/RedminePower/redmine_date_independent/assets/87136359/b6ec8743-bdc8-436f-a712-f3c174cf40f1)

When "Derived from child issues" is enabled, changing the **due date of a child issue** automatically updates the **parent issue's due date**. This is a global setting and cannot be configured per project.

However, in practice, there are cases where you may want to _prevent date synchronization for specific projects or issues_.

This plugin was created to address such needs.

## Features

This plugin provides the following features:

- Even when "Start date / Due date" is set to "Derived from child issues", **make specific projects independent from child issues**
- For projects set to be independent, allow specific issue statuses to remain "Derived from child issues" and keep the date synchronization

## Supported Versions

- Redmine 4.x (tested with 4.2.3)
- Redmine 5.x (tested with 5.1.11)
- Redmine 6.x (tested with 6.1.1)

## Installation

Run the following commands in your Redmine plugins folder, then restart Redmine.

```
$ cd /path/to/redmine/plugins
$ git clone https://github.com/RedminePower/redmine_date_independent.git
$ bundle exec rake redmine:plugins:migrate NAME=redmine_date_independent RAILS_ENV=production
```

## Usage

1. After installing the plugin, "Independent of start date/due date" will be added to the admin menu.
![image](https://github.com/RedminePower/redmine_date_independent/assets/87136359/febd0e09-ac77-47c4-810e-8521d6db9ef0)
1. Click "Independent of start date/due date" to go to the list page.
![image](https://github.com/RedminePower/redmine_date_independent/assets/87136359/bf0fbc0e-5b68-4596-8ca1-9a251261ddbc)
1. Click "New independent of start date/due date", fill in the required fields, and click the "Create" button.
![image](https://github.com/RedminePower/redmine_date_independent/assets/87136359/158da482-8b27-409b-9377-f6ee554ff3d8)

## Uninstallation

Run the following commands to remove the database tables and delete the plugin folder.

```
$ cd /path/to/redmine/plugins
$ bundle exec rake redmine:plugins:migrate NAME=redmine_date_independent VERSION=0 RAILS_ENV=production
$ rm -rf redmine_date_independent
```
