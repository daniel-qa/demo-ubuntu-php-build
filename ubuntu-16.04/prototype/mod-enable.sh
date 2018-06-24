#!/usr/bin/env bash


sudo a2dismod mpm_event
sudo a2enmod mpm_prefork

sudo a2dismod php7.0
sudo a2enmod php5
