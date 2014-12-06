#
# Checks if a OSX application is present in /Applications
#
class manual {
  define osx_application {
    unless member(split($installed_osx_applications,','), "${title}.app") {
      warning("${title}.app isn't installed in this system.")
    }
  }
}
