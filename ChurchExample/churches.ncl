<?xml version="1.0" encoding="ISO-8859-1"?>
<ncl id="churches" xmlns="http://www.ncl.org.br/NCL3.0/EDTVProfile">
  <head>
    <connectorBase id="connBaseId">
      <importBase alias="conn" documentURI="ConnectorBase.ncl"/>
      <importBase alias="space" documentURI="SpaceConnectorBase.ncl"/>
    </connectorBase>
  </head>
    <body>
      <!-- game start ports -->
      <port id="pEntrance1" component="msMetropolitanCathedral" interface="pMetropolitanCathedral"/>
      <port id="pEntrance2" component="msPeqGrandeChurch" interface="pPeqGrandeChurch"/>
      <port id="pEntrance3" component="msPatrocinioChurch" interface="pPatrocinioChurch"/>

      <!-- mission in the metropolitan cathedral -->
    	<context id="msMetropolitanCathedral">
        <port id="pMetropolitanCathedral" component="locMetropolitanCathedral"/>
        <property name="mandatory" value="true"/>
        <property name="occurrence" value="unbounded"/>
        <property name="visibility" value="true"/>
    	</context>

      <!-- mission in the pequeno grande church -->
      <context id="msPeqGrandeChurch">
        <port id="pPeqGrandeChurch" component="locPeqGrandeChurch"/>
        <property name="mandatory" value="true"/>
        <property name="occurrence" value="unbounded"/>
        <property name="visibility" value="true"/>
      </context>

      <!-- mission in the patrocinio church -->
      <context id="msPatrocinioChurch">
        <port id="pPatrocinioChurch" component="locPatrocinioChurch"/>
        <property name="mandatory" value="true"/>
        <property name="occurrence" value="unbounded"/>
        <property name="visibility" value="true"/>
      </context>
    </body>
</ncl>
