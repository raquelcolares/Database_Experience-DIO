# Conceptual Schema from scratch

The purpose of this project was to build a conceptual schema of an execution control and management system work orders in a mechanic shop.

### Project scope:

* Customers take vehicles to the mechanic shop to be repaired or to undergo periodic revisions.
* Each vehicle is assigned to a team of mechanics who identifies the services to be performed and fills in a service order with delivery date.
* From the service order, the value of each service is calculated by referring to a labor reference table.
* The value of each piece will also compose the service order.
* The customer authorizes the execution of the services.
* The same team evaluates and executes the services.
* Mechanics have a code, name, address and speciality.
* Each service order has: number, issue date, value, status and a work completion date.
* A service order can be composed of several services and the same service can be contained in more than one service order.
* A service order can have multiple part types and a part can be present in more than one service order.
