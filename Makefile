## dcape-app-template Makefile
## This file extends Makefile.app from dcape
#:

SHELL               = /bin/bash
CFG                ?= .env
CFG_BAK            ?= $(CFG).bak

#- App name
APP_NAME           ?= runner

#- Docker image name
IMAGE              ?= gitea/act_runner

#- Docker image tag
IMAGE_VER          ?= 0.2.13

# If you need database, uncomment this var
#USE_DB              = yes

# If you need user name and password, uncomment this var
#ADD_USER            = yes

#- GITEA_INSTANCE_URL
INSTANCE_URL       ?= $(AUTH_URL)
#- GITEA_RUNNER_REGISTRATION_TOKEN
REGISTRATION_TOKEN ?= fill_by_hand
#- GITEA_RUNNER_NAME
RUNNER_NAME        ?= gr
#- GITEA_RUNNER_LABELS
RUNNER_LABELS      ?= dcape

# ------------------------------------------------------------------------------

# if exists - load old values
-include $(CFG_BAK)
export

-include $(CFG)
export

# ------------------------------------------------------------------------------
# Find and include DCAPE_ROOT/Makefile
DCAPE_COMPOSE   ?= dcape-compose
DCAPE_ROOT      ?= $(shell docker inspect -f "{{.Config.Labels.dcape_root}}" $(DCAPE_COMPOSE))

ifeq ($(shell test -e $(DCAPE_ROOT)/Makefile.app && echo -n yes),yes)
  include $(DCAPE_ROOT)/Makefile.app
else
  include /opt/dcape/Makefile.app
endif

# ------------------------------------------------------------------------------

config.yaml: CMD = run app generate-config
config.yaml: dc


