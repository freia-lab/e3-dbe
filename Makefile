EXCLUDE_ARCHS += eldk
EXCLUDE_VERSIONS += 3.15.2

include ${EPICS_ENV_PATH}/module.Makefile

#PROJECT = dbe_sample
EPICSVERSION = 3.14.15.2
EPICS_VERSION = 3.14.15.2

SOURCES = -none-

STARTUPS = $(wildcard src/main/ioc/*.cmd)

OPIS= src/main/boy
