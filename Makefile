clean:
	./gradlew clean

compile:
	./gradlew compileGroovy

test: 
	./gradlew test

upload:
	./gradlew -b publish.gradle uploadArchives

close:
	./gradlew -b publish.gradle closeAndReleaseRepository

