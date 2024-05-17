Alias: $loinc = http://loinc.org

Extension: QueryTypeExtension
Id: queryType
Context: Task.input.type, SubscriptionStatus.notificationEvent, SubscriptionTopic.notificationShape, Basic.extension
* ^url = "http://example.org/StructureDefinition/queryType"
* value[x] only Coding

Extension: QueryExtension
Id: query
Context: Task.input.value[x]
* ^url = "http://example.org/StructureDefinition/query"
* value[x] only string

Instance: MyTask
InstanceOf: Task
* status = #requested
* intent = #order
* input.type.extension[queryType].url = "http://example.org/StructureDefinition/queryType"
* input.type.extension[queryType].valueCoding = $loinc#85354-9 "Blood pressure panel with all children optional"
* input.valueString.extension[query].url = "http://example.org/StructureDefinition/query"
* input.valueString.extension[query].valueString = "http://example.org/Observation/$lastn?code=http://loinc.org|85354-9"
