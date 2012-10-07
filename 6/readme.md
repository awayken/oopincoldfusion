# Gateways #

## Typical Gateways ##

Gateways manage and handle access between an application and a data provider. The real benefit is that they handle aggregate records instead of single records, like a DAO does.

The book advises that search filters have varying public methods which just pass search details onto a broader, private `filterAllItems()` method. This method takes a structure as its filter. He uses the deplorable `WHERE 1 = 1` hack and then consecutive `<cfif structKeyExists( arguments.filter, 'emailAddress' )>`. You could probably do fine looping through the keys in the filter, assuming you require the keys to be fields in the database, which you can do since you're creating the public methods that interact with this private method. Of course, this wouldn't allow for specific or unique types of filtering.

The book suggests caching gateways in the application scope.

## Table Data Gateway ##

Apparently, the community hasn't agreed on what "gateway" means. The above is the supposed "common" definition, but this section outlines an alternate version: a table data gateway encapsulates all interactions with the database on behalf of an object. It's basically the DAO with these aggregate methods thrown in.