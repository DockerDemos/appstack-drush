appstack-drush
==============

_v2.1 - 20160809_

Docker image for building and running [Drush](http://drush.ort) in a container.

### Building and Running ###

Build the Image:

1. `git clone https://github.com/DockerDemos/appstack-drush.git`
2. `sudo docker build -t drush .`

Use Drush:

    sudo docker run --volumes-from <your webserver container> -it drush <drush command>

Example:

    sudo docker run --volumes-from my_docker_webserver -it drush "drush site-install standard --account-name=admin --account-pass=<my pass> --db-url=<DB_URL_PATH>

### Changelog ###

_v2.1 - 20160809_

1. [Merged #2: Add PostgreSQL support](https://github.com/DockerDemos/appstack-drush/pull/2)

_v2.0 - 20160330_

1. Added multiple versions of Drush - "master" (latest version from drush-ops), 8.0.5, 7.2.0, 6.7.0
2. Versions can be accessed with "drush-$version_number".  ie: drush-7.2.0
3. Drush 8.0.5 is the default "drush" command version


### Known Issues ###

Tracked on Github: [https://github.com/DockerDemos/appstack-drush/issues](https://github.com/DockerDemos/appstack-drush/issues)

### Acknowledgments ###

* Thanks to the Drush folks [\(http://drush.org\)](http://drush.org) for developing and supporting Drush!

### Copyright Info ###

[Drush](http://drush.org) is licensed under the GNU GPL v2 license.

The Dockerfile and related code, scripts or documentation in this repository is:

Copyright (C) 2014-2015 Chris Collins

This program is free software: you can redistribute it and/or modify it under the terms of the GNU General Public License as published by the Free Software Foundation, either version 3 of the License, or (at your option) any later version.

This program is distributed in the hope that it will be useful, but WITHOUT ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the GNU General Public License for more details.

You should have received a copy of the GNU General Public License along with this program. If not, see http://www.gnu.org/licenses/.

