# riak-for-travis

This repo builds standalone Riak binary tarballs from source for use in Travis
container builds and anywhere else the usual Debian packages may be
problematic.

After a particular version of Riak is built, version-specific config files
(from `config/riak-<version>/`) are copied over the default configs and the
whole lot is bundled up into a tarball.

The tarballs are named for the Riak version they contain (`riak-1.4.12.tar.bz2`,
for example) but the directory they extract to is simply `riak`. If multiple
versions are needed on the same machine, make sure to move or rename them.
