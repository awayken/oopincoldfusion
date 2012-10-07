# Creating a Service Layer #

Service layer is a façade to the application, typically replacing the DAO and Gateway objects.

The Service Layer strives to be the single point-of-contact for accessing your bean, whether that contact is through other CFML or through something more exotic like web service calls and the like.

Honestly, all this duplication seems to verify for me that Gateway and Data can be combined into one CFC. Then you don't need a Service layer at all. Unless he comes up with some compelling reasons to use a service layer beyond what he's already said.

## Abstract Class ##

He suggests using an abstract class to build in "coreUtils". I do not like his naming convention, but I do see value in creating a `BaseBean` which can be extended by `BaseDataBean`, `BaseGatewayBean` and `BaseServiceBean`. Then your beans, data access objects, gateways, and services would all appropriately extend your base.