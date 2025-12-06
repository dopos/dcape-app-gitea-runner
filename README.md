# dcape-app-gitea-runner

[![GitHub Release][1]][2] [![GitHub code size in bytes][3]]() [![GitHub license][4]][5]

[1]: https://img.shields.io/github/release/dopos/dcape-app-gitea-runner.svg
[2]: https://github.com/dopos/dcape-app-gitea-runner/releases
[3]: https://img.shields.io/github/languages/code-size/dopos/dcape-app-gitea-runner.svg
[4]: https://img.shields.io/github/license/dopos/dcape-app-gitea-runner.svg
[5]: LICENSE

[Gitea act runner](https://gitea.com/gitea/act_runner) application package for [dcape](https://github.com/dopos/dcape).

## Upstream

* Project: [Gitea act runner](https://gitea.com/gitea/act_runner)
* Docker: [gitea/act_runner](https://hub.docker.com/r/gitea/act_runner)

## Requirements

* linux 64bit with git, make, sed installed
* [docker](http://docker.io) with [compose plugin](https://docs.docker.com/compose/install/linux/)
* [dcape](https://github.com/dopos/dcape) v3
* VCS service [Gitea](https://gitea.io)

## Install

### Via CI/CD

* VCS: Fork or mirror this repo in your Git service
* CI/CD: Activate repo
* VCS: "Test delivery", config sample will be saved to config service (enfist in dcape)
* Config: Edit config vars and remove .sample from config name
* VCS: "Test delivery" again (or CI/CD: "Restart") - app will be installed and started on CI/CD host
* After that just change source and do `git push` - app will be reinstalled and restarted on CI/CD host

### Via terminal

Run commands on deploy host with [dcape](https://github.com/dopos/dcape) installed:
```bash
git clone https://github.com/dopos/dcape-app-gitea-runner.git
cd dcape-app-gitea-runner
make config-if
... <edit .env>
make up
```

## License

Copyright 2025 Aleksei Kovrizhkin <lekovr+dopos@gmail.com>

Licensed under the Apache License, Version 2.0 (the "[License](LICENSE)");
