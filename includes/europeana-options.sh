#!/bin/bash

if [ $local == true ]; then
	PROPERTY_FILE=europeana.properties.local
else
	PROPERTY_FILE=europeana.properties
fi

EUROPEANA_OPTS=-DEUROPEANA_PROPERTIES="$PROPERTY_FILE_DIR/$PROPERTY_FILE"
