DB=enceladus
BUILD=${CURDIR}/build.sql
SCRIPTS=${CURDIR}/scripts
CSV='/mnt/f/curious_moon/data/master_plan.csv'
MASTER=$(SCRIPTS)/import.sql
NORMALIZE=$(SCRIPTS)/normalize.sql

all: normalize
	psql $(DB) -f $(BUILD)

master: clean
	@cat $(MASTER) >> $(BUILD)

import: master
	@echo "COPY import.master_plan FROM $(CSV) with DELIMITER ',' HEADER CSV;" >> $(BUILD)

normalize: import
	@cat $(NORMALIZE) >> $(BUILD)

clean: 
	@rm -rf $(BUILD)
