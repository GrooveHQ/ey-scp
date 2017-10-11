# ey-scp

Provides a CLI to quickly and painlessly deploy configuration files to multiple
instances on EngineYard

## Installation

1. Run

        $ gem install glennr-ey-scp

Or with bundler

        gem 'glennr-ey-scp'

2. Make sure that you [have your public key registered with
   EY](https//support.cloud.engineyard.com/entries/21016528-Add-an-SSH-Key).

## Usage

1. Run

        ey login

   from your project directory.

2. Use ```ey-scp``` from any directory with the following syntax:

        ey-scp -e ENVIRONMENT [OPTIONS] LOCAL_SOURCE_FILE REMOTE_DESTINATION

   e.g.

        ey-scp -e production --app-servers ~/local/project/config/foo.yml /remote/project/path/config

### Specifying target instances

Option | Uploads to instances with roles of
------ | ----------------------------------
--app-servers | solo, app_master, app
--app-master | solo, app_master
--db-servers | solo, db_master, db_slave
--db-master | solo, db_master
--db-slaves | solo, db_slave
--util-servers | solo, util

## Contributing

Right now, we could really use someone to refactor the code so that it's less
scripty/hackish.

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
