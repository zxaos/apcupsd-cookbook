#
# Cookbook Name:: apcupsd
# Attributes:: apcupsd
#
# Copyright (C) 2013 Matt Bond
# 
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# 
#    http://www.apache.org/licenses/LICENSE-2.0
# 
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

default[:apcupsd][:upscable] = "usb"
default[:apcupsd][:upstype] = "usb"
default[:apcupsd][:device] = ""
default[:apcupsd][:polltime] = "60"
default[:apcupsd][:pwrfaildir] = "/etc/apcupsd"
default[:apcupsd][:lockfile] = "/var/lock"
default[:apcupsd][:scriptdir] = "/etc/apcupsd"
default[:apcupsd][:powerfaildir] = "/etc/apcupsd"
default[:apcupsd][:nologindir] = "/etc"
default[:apcupsd][:onbatterydelay] = "6"
default[:apcupsd][:batterylevel] = "5"
default[:apcupsd][:minutes] = "3"
default[:apcupsd][:timeout] = "0"
default[:apcupsd][:annoy] = "300"
default[:apcupsd][:annoydelay] = "60"
default[:apcupsd][:nologon] = "disable"
default[:apcupsd][:killdelay] = "0"
default[:apcupsd][:netserver] = "on"
default[:apcupsd][:nisip] = "127.0.0.1"
default[:apcupsd][:nisport] = "3551"
default[:apcupsd][:eventsfile] = "/var/log/apcupsd.events"
default[:apcupsd][:eventsfilemax] = "10"
default[:apcupsd][:upsclass] = "standalone"
default[:apcupsd][:upsmode] = "disable"
default[:apcupsd][:stattime] = "0"
default[:apcupsd][:statfile] = "/var/log/apcupsd.status"
default[:apcupsd][:logstats] = "off"
default[:apcupsd][:datatime] = "0"
default[:apcupsd][:facility] = "daemon"

#Optional:
#[:apcupsd][:upsname]
