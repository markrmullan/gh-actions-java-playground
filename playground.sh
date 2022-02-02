RELEASE_TAG_NAME="1.0.0-SNAPSHOT"

version=$(./gradlew -q printVersion)
echo "VERSION IS ${version}"

if ./gradlew -q printVersion | grep -q "SNAPSHOT"
  then
    echo "This is a SNAPSHOT release — exiting early and not invoking ./gradlew closeAndReleaseRepository"
    exit 0
fi

if [[ $(./gradlew -q printVersion) != "${RELEASE_TAG_NAME}" ]]
  then
    echo "Release tag (${RELEASE_TAG_NAME}) does not match the build.gradle version"
    exit 1
fi
