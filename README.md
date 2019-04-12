kitchen-syncgz
============

kitchen-syncgz provides alternate file transfer implementations for test-kitchen,
most of which are faster than the default, thus speeding up your test runs.

This project is a fork of [kitchen-sync](https://github.com/coderanger/kitchen-sync), the key enhancement of kitchen-syncgz is that it archives directories before transferring files to the target machine, which helps to overcome latency related issues when transferring a large number of small files. The archiving enhancement is based on the amazing work done by [Roy Reznik](https://github.com/coderanger/kitchen-sync/pull/31).

Quick Start
-----------

Run `chef gem install kitchen-syncgz` and then set your transport to `sftpgz`:

```
transport:
  name: sftpgz
```

Available Transfer Methods
--------------------------

### `sftpgz`

The default mode uses SFTP for file transfers, as well as a helper script to
avoid recopying files that are already present on the test host. If SFTP is
disabled, this will automatically fall back to the SCP mode.

By default this will use the Chef omnibus Ruby, you can customize the path to
Ruby via `ruby_path`:

```
transport:
  name: sftpgz
  ruby_path: /usr/bin/ruby
```


License
-------

Copyright 2019, Igal Shprincis

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
