# Torrents image on Scaleway

[![Build Status](https://travis-ci.org/scaleway-community/scaleway-torrents.svg?branch=master)](https://travis-ci.org/scaleway-community/scaleway-torrents)
[![Scaleway ImageHub](https://img.shields.io/badge/ImageHub-view-ff69b4.svg)](https://hub.scaleway.com/torrents.html)
[![Run on Scaleway](https://img.shields.io/badge/Scaleway-run-69b4ff.svg)](http://cloud.scaleway.com/#/servers/new?image=4e18f1fc-0b66-4692-a38d-bfa4c94f29de)

Launch your Torrents app on Scaleway servers in minutes.

<img src="http://upload.wikimedia.org/wikipedia/en/2/2f/Bittorrent_7.2_Logo.png" width="400px" />

---

## Changelog

### 1.3.0 (unreleased)

* Create a `public` folder without authentication ([#13](https://github.com/scaleway-community/scaleway-torrents/issues/13))
* Fix: maximum torrent file size patch was not applied ([#22](https://github.com/scaleway-community/scaleway-torrents/issues/22))
* Fix: create SSL certificates for vsftpd ([#21](https://github.com/scaleway-community/scaleway-torrents/issues/21))

### 1.2.0 (2015-06-19)

* Bumped rutorrent to 3.7
* Switched to Ubuntu Trusty base image
* Fix vsftpd permissions, so user can download the files he uploaded
* Enable FTPS ([#14](https://github.com/scaleway-community/scaleway-torrents/issues/14))

### 1.1.0 (2015-05-28)

* Increased maximum torrent file size to 15M ([#11](https://github.com/scaleway-community/scaleway-torrents/issues/11))
* Added a symlink of the downloads folder in /root
* Credentials are editable ([#9](https://github.com/scaleway-community/scaleway-torrents/issues/9))
* Index page to link to ruTorrent, download directory and account page
* Added a directory listing (using [h5ai](http://larsjung.de/h5ai/)) ([#3](https://github.com/scaleway-community/scaleway-torrents/issues/3))
* Configure vsftpd to manage download directory ([#2](https://github.com/scaleway-community/scaleway-torrents/issues/2))

### 1.0.0 (2015-05-07)

This initial version contains:

* *rtorrent*, launched by *supervisord*
* *rutorrent* (web interface) to manage torrents, with default plugins configured and useless plugins removed (*httprpc* and *rpc*)
* a basic installer to setup credentials when *rutorrent* is accessed for the first time
* the init job `/etc/init/update-rtorrent-ip.conf` to set server's IP address in `/home/rtorrent/.rtorrent.rc`


---

## How to hack

**This image is meant to be used on a Scaleway server.**

We use the Docker's building system and convert it at the end to a disk image that will boot on real servers without Docker. Note that the image is still runnable as a Docker container for debug or for inheritance.

[More info](https://github.com/scaleway/image-builder)

---

A project by [![Scaleway](https://avatars1.githubusercontent.com/u/5185491?v=3&s=42)](https://www.scaleway.com/)
