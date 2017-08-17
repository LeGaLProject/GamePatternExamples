<?xml version="1.0" encoding="ISO-8859-1"?>
<ncl id="p2Game" xmlns="http://www.ncl.org.br/NCL3.0/EDTVProfile">
    <head>
        <connectorBase id="connBaseId">
    	    <importBase alias="conn" documentURI="ConnectorBase.ncl"/>
            <importBase alias="space" documentURI="SpaceConnectorBase.ncl"/>
        </connectorBase>
    </head>
    <body>
        <!-- game start ports -->
        <port id="pEntrance1" component="msMetropolitanCathedral" interface="pMetropolitanCathedral"/>
    	<port id="pEntrance2" component="msDragaoDoMarCenter" interface="pDragaoDoMarCenter"/>
    	<port id="pEntrance3" component="msBridgeOfTheEnglish" interface="pBridgeOfTheEnglish"/>
    	<port id="pEntrance4" component="msCearaCultureMuseum" interface="pCearaCultureMuseum"/>
        	
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
    	
    	<!-- mission in the dragao do mar center-->
    	<context id="msDragaoDoMarCenter">
            <port id="pDragaoDoMarCenter" component="locDragaoDoMarCenter"/>
            <property name="mandatory" value="true"/>
            <property name="occurrence" value="unbounded"/>
            <property name="visibility" value="true"/>
			<property name="requirements" value="msMetropolitanCathedral"/>

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
			<property name="requirements" value="msDragaoDoMarCenter"/>
            
            <media id="locBridgeOfTheEnglish" type="application/gml+xml" src="media/bridgeOfTheEnglish.gml"/>
            <media id="mdBridgeOfTheEnglish" type="text/plain" src="media/bridgeOfTheEnglishText.txt"/>

            <link xconnector="space#onEnteringStart">
                <bind role="onEntering" component="locBridgeOfTheEnglish"/>
                <bind role="start" component="mdBridgeOfTheEnglish"/>
            </link>
    	</context>
    	
    	<!-- mission in the culture museum -->
    	<context id="msCearaCultureMuseum">
            <port id="pCearaCultureMuseum" component="locCearaCultureMuseum"/>
            <property name="mandatory" value="true"/>
            <property name="occurrence" value="unbounded"/>
            <property name="visibility" value="true"/>
			<property name="requirements" value="msBridgeOfTheEnglish"/>
            
            <media id="locCearaCultureMuseum" type="application/gml+xml" src="media/cearaCultureMuseum.gml"/>
            <media id="mdCearaCultureMuseum" type="text/plain" src="media/cearaCultureMuseumText.txt"/>

            <link xconnector="space#onEnteringStart">
                <bind role="onEntering" component="locCearaCultureMuseum"/>
                <bind role="start" component="mdCearaCultureMuseum"/>
            </link>
    	</context>
		
		<!-- mission relationships -->
		<link xconnector="conn#onEndStart">
			<bind role="onEnd" component="msMetropolitanCathedral"/>
			<bind role="start" component="msDragaoDoMarCenter"/>
		</link>
		<link xconnector="conn#onEndStart">
			<bind role="onEnd" component="msDragaoDoMarCenter"/>
			<bind role="start" component="msCearaCultureMuseum"/>
		</link>
		<link xconnector="conn#onEndStart">
			<bind role="onEnd" component="msCearaCultureMuseum"/>
			<bind role="start" component="mdCearaCultureMuseum"/>
		</link>
    </body>
</ncl>