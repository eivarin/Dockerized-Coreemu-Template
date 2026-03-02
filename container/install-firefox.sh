#!/bin/bash
set -e


# 1. Update and install minimal build dependencies
apt-get update
apt-get install -y --no-install-recommends software-properties-common gpg gpg-agent wget

# 2. Add the Mozilla Team PPA
add-apt-repository -y ppa:mozillateam/ppa

# 3. Set Apt Pinning to prioritize PPA over the Snap wrapper
# This ensures 'apt install firefox' grabs the actual binary
echo 'Package: *
Pin: release o=LP-PPA-mozillateam
Pin-Priority: 1001' > /etc/apt/preferences.d/mozilla-firefox

# 4. Install Firefox and specific X11/GTK dependencies
apt-get update
apt-get install -y --no-install-recommends firefox

# 5. Cleanup: Remove everything not needed for the final app
apt-get purge -y software-properties-common gpg gpg-agent
apt-get autoremove -y

rm -rf /var/lib/apt/lists/*