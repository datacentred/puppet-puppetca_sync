# puppetcrl_sync

#### Table of Contents

1. [Overview - What is the puppetcrl_sync module?](#overview)
2. [Module Description - What does the module do?](#module-description)
3. [Setup ](#setup)
4. [Usage](#usage)
5. [Limitations - OS compatibility, etc.](#limitations)
6. [Development - Guide for contributing to the module](#development)
7. [Contributors - Those with commits](#contributors)

## Overview

The puppet CA CRL is not synchronised between hosts. This module handles distributing the CRL on each puppet run. 

## Module Description

The module basically consists of a generic function which returns the contents of any arbitary file, 
and a file resource which uses this function to get the CRL from the puppet master and populate a file on a host. 

## Setup

Dependencies for the module are :

* https://github.com/puppetlabs/puppetlabs-stdlib

### Usage

Do not declare this class on your puppet master, it just gets declared on the host you want the CRL to be copied to. 

In a standard puppet environment where you just want to copy the CRL to the standard puppet location :

    include ::puppetcrl_sync

All the parameters are configurable, so to customise you'd do something like :

    class { '::puppetcrl_sync':
        location => '/tmp/testing'
        target   => '/home/matt'
        owner    => 'matt'
        group    => 'matt'
        mode     => '0755'
    }

## Limitations

This module has been developed and tested against :

   Ubuntu 14.04

## Development

Fork, hack, test, then raise a PR

## Contributors

The github [contributor graph](https://github.com/datacentred/puppet-puppetcrl_sync/graphs/contributors).

