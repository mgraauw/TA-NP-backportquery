This is a draft proposal to extend the [Subscriptions-based Notified Pull with related query](https://hl7.org/fhir/uv/subscriptions-backport/2024Jan/notifications.html#notified-pull) to the Task resource.

This would give us:
- a unified way to exchange code+querystring couples within various FHIR exchange patterns, i.e. within the Subscription framework as well as within Task exchanges
- explicit semantics, i.e. a way for a valueString to make explicit that "I am a query" - thus enabling clients to act accordingly
- explicit semantics for queryType as well.
