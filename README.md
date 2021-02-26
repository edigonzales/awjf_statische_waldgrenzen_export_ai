# awjf_statische_waldgrenzen_export_ai

```
java -jar /Users/stefan/apps/ili2pg-4.3.1/ili2pg-4.3.1.jar \
--dbschema awjf_statische_waldgrenze --models SO_AWJF_Statische_Waldgrenzen_20191119 \
--defaultSrsCode 2056 --createGeomIdx --createFk --createFkIdx --createUnique --createEnumTabs --beautifyEnumDispName --createMetaInfo --createNumChecks --nameByTopic --strokeArcs \
--createscript schema/awjf_statische_waldgrenze.sql
```

```
java -jar /Users/stefan/apps/ili2pg-4.3.1/ili2pg-4.3.1.jar \
--dbschema awjf_statische_waldgrenzen_mgdm --models Waldgrenzen_LV95_V1_1 \
--defaultSrsCode 2056 --createGeomIdx --createFk --createFkIdx --createUnique --createEnumTabs --beautifyEnumDispName --createMetaInfo --createNumChecks --nameByTopic --strokeArcs \
--idSeqMin 1000000000000 \
--createscript schema/awjf_statische_waldgrenzen_mgdm.sql
```