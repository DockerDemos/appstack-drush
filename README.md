appstack-drush
==============

_v1.0 - 20150211__

Docker image for building and running [Drush](http://drush.ort) in a container.

### Building and Running ###

Build the Image:

1. `git clone https://github.com/DockerDemos/appstack-drush.git`
2. `sudo docker build -t drush .`

Use Drush:

    sudo docker run --volumes-from <your webserver container> -it drush <drush command>

Example:

    sudo docker run --volumes-from my_docker_webserver -it drush "drush site-install standard --account-name=admin --account-pass=<my pass> --db-url=<DB_URL_PATH>


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

