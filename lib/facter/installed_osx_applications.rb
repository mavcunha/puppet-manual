Facter.add(:installed_osx_applications) do
  setcode do
    Facter::Core::Execution.exec("find /Applications -type d -maxdepth 1 -name '*.app' -print0 | xargs -0 basename | awk -F'\\n' -v ORS=, '{print $1}'")
  end
end
