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
    <port id="pEntrance1" component="msPatrocinioChurch" interface="pPatrocinioChurch"/>

    <!-- mission in the patrocinio church -->
    <context id="msPatrocinioChurch">
      <port id="pPatrocinioChurch" component="locPatrocinioChurch"/>
      <property name="mandatory" value="true"/>
      <property name="occurrence" value="unbounded"/>
      <property name="visibility" value="true"/>

      <media id="locPatrocinioChurch" type="application/gml+xml" src="media/patrocinioChurch.gml"/>
      <media id="mdImage" type="image/jpeg" src="media/peqGrandeChurchIndicator.jpg"/>

      <link xconnector="space#onEnteringStart">
        <bind role="onEntering" component="locPatrocinioChurch"/>
        <bind role="start" component="mdImage"/>
      </link>
    </context>

    <!-- mission in the pequeno grande church -->
    <context id="msPeqGrandeChurch">
      <port id="pPeqGrandeChurch" component="locPeqGrandeChurch"/>
      <property name="mandatory" value="true"/>
      <property name="occurrence" value="unbounded"/>
      <property name="visibility" value="true"/>

      <media id="locPeqGrandeChurch" type="application/gml+xml" src="media/peqGrandeChurch.gml"/>
      <media id="mdVideo" type="video/3gpp" src="media/metropolitanCathedralIndicator.3gp"/>

      <link xconnector="space#onEnteringStart">
        <bind role="onEntering" component="locPeqGrandeChurch"/>
        <bind role="start" component="mdVideo"/>
      </link>
    </context>

    <!-- mission in the metropolitan cathedral -->
    <context id="msMetropolitanCathedral">
      <port id="pMetropolitanCathedral" component="locMetropolitanCathedral"/>
      <property name="mandatory" value="true"/>
      <property name="occurrence" value="unbounded"/>
      <property name="visibility" value="true"/>

      <media id="locMetropolitanCathedral" type="application/gml+xml" src="media/metropolitanCathedral.gml"/>
      <media id="mdMetropolitanCathedral" type="text/plain" src="media/treasure.obj">
        <property name="mtlFile" value="media/treasure.mtl"/>
        <property name="texture" value="media/treasure.jpg"/>
      </media>

      <link xconnector="space#onEnteringStart">
        <bind role="onEntering" component="locMetropolitanCathedral"/>
        <bind role="start" component="mdMetropolitanCathedral"/>
      </link>
    </context>
  </body>
</ncl>
