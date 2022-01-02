RELEASE_TAG_NAME="1.0.0-SNAPSHOT"

if [[ $(./gradlew -q printVersion) != "${RELEASE_TAG_NAME}" ]]
  then
    echo "Release tag (${RELEASE_TAG_NAME}) does not match the build.gradle version"
    exit 1
fi