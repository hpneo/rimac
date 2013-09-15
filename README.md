Rimac - Ruby client for Municipalidad Metropolitana de Lima API ([http://lima.datosabiertos.pe/](http://lima.datosabiertos.pe/))
====

Rimac is a client for  Municipalidad Metropolitana de Lima API ([http://lima.datosabiertos.pe/](http://lima.datosabiertos.pe/)). More information [here](http://lima.datosabiertos.pe/developers/).

Install
----
```
gem install rimac
```

Usage
----
```ruby
client = Rimac::API.new("e1fcb8366d2e470c2a41711c912edbc98404c623")
client.get("MUSEO-DE-LIMA")
```