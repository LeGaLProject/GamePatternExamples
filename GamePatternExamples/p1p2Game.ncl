<?xml version="1.0" encoding="ISO-8859-1"?>
<ncl id="p1p2Game" xmlns="http://www.ncl.org.br/NCL3.0/EDTVProfile">
    <head>
        <connectorBase id="connBaseId">
    	    <importBase alias="conn" documentURI="ConnectorBase.ncl"/>
            <importBase alias="space" documentURI="SpaceConnectorBase.ncl"/>
        </connectorBase>
    </head>
    <body>
        <!-- game start ports -->
        <port id="pEntrance1" component="msMetropolitanCathedral" interface="pMetropolitanCathedral"/>
    	<port id="pEntrance5" component="msMaracatuMuseum" interface="pMaracatuMuseum"/>
    	<port id="pEntrance6" component="msOrbitaBar" interface="pOrbitaBar"/>
        	
    	<!-- mission in the metropolitan cathedral -->
    	<context id="msMetropolitanCathedral">
            <port id="pMetropolitanCathedral" component="locMetropolitanCathedral"/>
            <property name="mandatory" value="true"/>
            <property name="occurrence" value="unbounded"/>
            <property name="visibility" value="true"/>

            <media id="locMetropolitanCathedral" type="application/gml+xml" src="media/metropolitanCathedral.gml"/>
            <media id="mdMetropolitanCathedral" type="text/plain" src="media/metropolitanCathedralText.txt"/>

            <link xconnector="space#onEnteringStart">
                <bind role="onEntering" component="locMetropolitanCathedral"/>
                <bind role="start" component="mdMetropolitanCathedral"/>
            </link>
    	</context>
    	
    	<!-- mission in the dragao do mar center -->
    	<context id="msDragaoDoMarCenter">
            <port id="pDragaoDoMarCenter" component="locDragaoDoMarCenter"/>
            <property name="mandatory" value="true"/>
            <property name="occurrence" value="unbounded"/>
            <property name="visibility" value="true"/>

            <media id="locDragaoDoMarCenter" type="application/gml+xml" src="media/dragaoDoMarCenter.gml"/>
            <media id="mdDragaoDoMarCenter" type="text/plain" src="media/dragaoDoMarCenterText.txt"/>

            <link xconnector="space#onEnteringStart">
                <bind role="onEntering" component="locDragaoDoMarCenter"/>
                <bind role="start" component="mdDragaoDoMarCenter"/>
            </link>
    	</context>
    	
    	<!-- mission in the bridge of the english -->
    	<context id="msBridgeOfTheEnglish">
            <port id="pBridgeOfTheEnglish" component="locBridgeOfTheEnglish"/>
            <property name="mandatory" value="true"/>
            <property name="occurrence" value="unbounded"/>
            <property name="visibility" value="true"/>
            
            <media id="locBridgeOfTheEnglish" type="application/gml+xml" src="media/bridgeOfTheEnglish.gml"/>
            <media id="mdBridgeOfTheEnglish" type="text/plain" src="media/bridgeOfTheEnglishText.txt"/>

            <link xconnector="space#onEnteringStart">
                <bind role="onEntering" component="locBridgeOfTheEnglish"/>
                <bind role="start" component="mdBridgeOfTheEnglish"/>
            </link>
    	</context>
		
		<!-- mission in the ceara culture museum -->
    	<context id="msCearaCultureMuseum">
            <port id="pCearaCultureMuseum" component="locCearaCultureMuseum"/>
            <property name="mandatory" value="true"/>
            <property name="occurrence" value="unbounded"/>
            <property name="visibility" value="true"/>
            
            <media id="locCearaCultureMuseum" type="application/gml+xml" src="media/cearaCultureMuseum.gml"/>
            <media id="mdCearaCultureMuseum" type="text/plain" src="media/cearaCultureMuseumText.txt"/>

            <link xconnector="space#onEnteringStart">
                <bind role="onEntering" component="locCearaCultureMuseum"/>
                <bind role="start" component="mdCearaCultureMuseum"/>
            </link>
    	</context>
		
		<!-- mission in the maracatu museum -->
    	<context id="msMaracatuMuseum">
            <port id="pMaracatuMuseum" component="locMaracatuMuseum"/>
            <property name="mandatory" value="true"/>
            <property name="occurrence" value="unbounded"/>
            <property name="visibility" value="true"/>
            
            <media id="locMaracatuMuseum" type="application/gml+xml" src="media/maracatuMuseum.gml"/>
            <media id="mdMaracatuMuseum" type="text/plain" src="media/maracatuMuseumText.txt"/>

            <link xconnector="space#onEnteringStart">
                <bind role="onEntering" component="locMaracatuMuseum"/>
                <bind role="start" component="mdMaracatuMuseum"/>
            </link>
    	</context>
		
		<!-- mission in the orbita bar -->
    	<context id="msOrbitaBar">
            <port id="pOrbitaBar" component="locOrbitaBar"/>
            <property name="mandatory" value="true"/>
            <property name="occurrence" value="unbounded"/>
            <property name="visibility" value="true"/>
            
            <media id="locOrbitaBar" type="application/gml+xml" src="media/orbitaBar.gml"/>
            <media id="mdOrbitaBar" type="text/plain" src="media/orbitaBarText.txt"/>

            <link xconnector="space#onEnteringStart">
                <bind role="onEntering" component="locOrbitaBar"/>
                <bind role="start" component="mdOrbitaBar"/>
            </link>
    	</context>
		
		<!-- mission relationships -->
		<link xconnector="conn#onEndStart">
			<bind role="onEnd" component="msMetropolitanCathedral"/>
			<bind role="start" component="msDragaoDoMarCenter"/>
		</link>
		<link xconnector="conn#onEndStart">
			<bind role="onEnd" component="msDragaoDoMarCenter"/>
			<bind role="start" component="msBridgeOfTheEnglish"/>
		</link>
		<link xconnector="conn#onEndStart">
			<bind role="onEnd" component="msBridgeOfTheEnglish"/>
			<bind role="start" component="mdCearaCultureMuseum"/>
		</link>
    </body>
</ncl>