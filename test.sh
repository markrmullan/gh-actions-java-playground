RELEASE_TAG_NAME="1.0.0-SNAPSHOT"

#if [[ $(./gradlew -q printVersion) != "${RELEASE_TAG_NAME}" ]]
#  then
#    echo "Release tag (${RELEASE_TAG_NAME}) does not match the build.gradle version"
#    exit 1
#fi

if [ 1 ]
  then
  echo << EOF
    Publish to Nexus Sonatype succeeded but failed to close and release. This step assumes there
    is only one staging repository active when it is called. Stale staging repositories may need
    to be purged manually before proceeding. They can be removed by logging into
    https://s01.oss.sonatype.org/.
  EOF
fi