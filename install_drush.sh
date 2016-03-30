#!/bin/bash

drush_install () {
    local version="$1"
    local drush_dir="drushes/drush-${version}"

    pushd /bin
    mkdir -p $drush_dir

    curl -sL ${drush_source}/${version}.tar.gz \
    | tar xz -C $drush_dir --strip-components=1

    chmod +x ${drush_dir}/drush ; ln -s ${drush_dir}/drush drush-${version}

    pushd $drush_dir
    composer install || return 1
    popd
    popd
}


composer_install () {
    local composer="${COMPOSER_URL}"

    pushd /bin
    curl -vsL $composer 2>&1 \
    | php -- --install-dir=/bin && ln -s composer.phar composer
    popd
}


main () {
    local drushes="$@"
    local drush_source="${DRUSH_DL}"

    if [[ -z ${drushes} ]]
        then echo "No Drush version specified"
        exit 1
    fi

    if ! composer_install
        then echo "Unable to install composer from ${COMPOSER_URL}"
        exit 1
    fi

    for drush in ${drushes[@]}
        do if ! drush_install $drush
            then echo "Failed to install Drush ${version} from ${drush_source}/${version}.tar.gz"
            exit 1
        fi
    done

}

main "$@"
