This is a draft proposal to extend the [Subscriptions-based Notified Pull with related query](https://hl7.org/fhir/uv/subscriptions-backport/2024Jan/notifications.html#notified-pull) and the [backport-related-query extension](https://hl7.org/fhir/uv/subscriptions-backport/2024Jan/StructureDefinition-backport-related-query.html) to the Task resource.

The backport-related-query extension is a way to add a queryType and query to: 

* SubscriptionStatus.notificationEvent
* SubscriptionTopic.notificationShape
* (and also the Basic resource, but this is mainly for R4 compatibility)

and this allows implementation of the Notified Pull pattern within the Subscription framework.

The existing (Dutch) [Technical Agreement Notified Pull](file:///C:/Users/marcd/Dropbox/Standards/2024-03-05%20-%20TA%20Notified%20Pull%20-%20v1.0.0_0.pdf)  is Task based.

I'd suggest to explicitly make the extension applicable to at least Task resource (possibly Parameters would be a candidate as well).

This would give us:

* a unified way to exchange queryType+querystring couples within various FHIR exchange patterns, i.e. within the Subscription framework as well as within Task exchanges
* explicit semantics, i.e. a way for a valueString to make explicit that "I am a query" - thus enabling clients to act accordingly
* explicit semantics for queryType as well.

It would make the Subscription-based notified pull "an" implementation of a Notified Pull pattern not "the" implementation of the NP pattern. Per use case implementers can decide whether Subscription, Task, or something else is the best option for such a NP implementation.

The existing backport-related-query extension contains both queryType and query. Since for Task the queryType would land in Task.input and the query in Task.value[x], the existing extension would need to be split in two.

See: [Task-MyTask.json.html](output/Task-MyTask.json.html), [StructureDefinition-query.html](output/StructureDefinition-query.html) 
and [StructureDefinition-queryType.html](output/StructureDefinition-queryType.html) for a sketch.