# user

#### Table of Contents

1. [Overview](#overview)
2. [Module Description - What the module does and why it is useful](#module-description)
3. [Setup - The basics of getting started with user](#setup)
    * [What user affects](#what-user-affects)
4. [Usage - Configuration options and additional functionality](#usage)
5. [Reference - An under-the-hood peek at what the module is doing and how](#reference)
6. [Development - Guide for contributing to the module](#development)

## Overview

A wrapper around the user resource type

## Module Description

This module allows one to define user resources in Hiera.

## Setup

### What user affects

* Users will be managed

## Usage

In a class:
```
include ::user
```

In hiera:
```
user::user:
  me:
    uid: '1000'
```

## Reference

See https://docs.puppetlabs.com/references/latest/type.html#user or https://docs.puppetlabs.com/pe/latest/accounts_user_type.html for the list of available attributes.

## Development

Patches welcome.
