# Manual

A boxen puppet module to run a simple check for applications in `/Applications`
folder.

## Usage

```puppet
  manual::osx_application { [
    'Handbreak',
    'Another Application',
    'Logic Pro X',
  ]: }
```

For applications that are not found in `/Applications` folder a warning is issued, like so:

    Warning: Scope(Manual::Osx_application[Handbreak]): Handbreak.app isn't installed in this system.
    Warning: Scope(Manual::Osx_application[Another Application]): Another Application.app isn't installed in this system.

## Required Puppet Modules

* `boxen`

## Development

Write code. Run `script/cibuild` to test it. Check the `script`
directory for other useful tools.
