clean:
	./gradlew clean

compile:
	./gradlew compileGroovy

test: 
	./gradlew test

upload:
	./gradlew assemble
	aws s3 cp --acl public-read build/libs/nf-ignite-*.zip s3://www.nextflow.io/plugins/nf-ignite/
	aws s3 cp --acl public-read build/libs/nf-ignite-*.json s3://www.nextflow.io/plugins/nf-ignite/
