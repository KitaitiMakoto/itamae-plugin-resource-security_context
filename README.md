itamae-plugin-resource-security_context
=======================================

* [Homepage](https://rubygems.org/gems/itamae-plugin-resource-security_context)
* [Documentation](http://rubydoc.info/gems/itamae-plugin-resource-security_context/frames)
* [Email](mailto:KitaitiMakoto at gmail.com)

Description
-----------

[Itamae][] resource plugin to handle with SELinux security context.

Features
--------

* Restoring security context

Currently, only the feature above is supported.

Examples
--------

At first, load this plugin.

    require 'itamae/plugin/resource/security_context'

### Restoring security context every time Itamae runs

    security_context '/etc/nginx/nginx.conf' do
      action :restore
    end

Note that default action of `security_context` is `:nothing`, so you need to write `action` directly when you want to restore security context.

You can also restore context recursively:

    security_context '/etc/httpd/conf.d' do
      action    :restore
      recursive true
    end

### Restoring security context when file is modified

    security_context '/etc/nginx/nginx.conf' do
      action :nothing
    end

    template '/etc/nginx/nginx.conf' do
      source :auto
      owner  'root'
      group  'root'
      mode   '644'
      notifies :restore, 'security_context[/etc/nginx/nginx.conf]'
    end

As noted earlier, the default action of `security_context` is `:nothing`, so you can ommit block:

    security_context '/etc/nginx/nginx.conf'

    template '/etc/nginx/nginx.conf' do
      source :auto
      owner  'root'
      group  'root'
      mode   '644'
      notifies :restore, 'security_context[/etc/nginx/nginx.conf]'
    end

Requirements
------------

* [Itamae][]

Install
-------

    $ gem install itamae-plugin-resource-security_context

Copyright
---------

Copyright (c) 2016 KITAITI Makoto

See COPYING.txt for details.

[Itamae]: http://itamae.kitchen
