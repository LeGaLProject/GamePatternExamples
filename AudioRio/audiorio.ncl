<?xml version="1.0" encoding="ISO-8859-1"?>
<ncl id="audiorioGame" xmlns="http://www.ncl.org.br/NCL3.0/EDTVProfile">
    <head>
        <connectorBase id="connBaseId">
    	    <importBase alias="conn" documentURI="ConnectorBase.ncl"/>
            <importBase alias="space" documentURI="SpaceConnectorBase.ncl"/>
        </connectorBase>
    </head>
    <body>
        <!-- game start ports -->
        <port id="pEntrance1" component="msWaterReservoir" interface="pWaterReservoir"/>
    	<port id="pEntrance2" component="msManholeCover" interface="pManholeCover"/>
    	<port id="pEntrance3" component="msPalaceFountain" interface="pPalaceFountain"/>
    	<port id="pEntrance4" component="msWaterCollection" interface="pWaterCollection"/>
        <port id="pEntrance5" component="msParnassus" interface="pParnassus"/>
        <port id="pEntrance6" component="msPajeuPark" interface="pPajeuPark"/>
        <port id="pEntrance7" component="msFetidExhalations" interface="pFetidExhalations"/>
        <port id="pEntrance8" component="msRuinDam" interface="pRuinDam"/>
        <port id="pEntrance9" component="msSculpturePark" interface="pSculpturePark"/>
        <port id="pEntrance10" component="msChamberPosturesA" interface="pChamberPosturesA"/>
        <port id="pEntrance11" component="msChamberPosturesB" interface="pChamberPosturesB"/>
        <port id="pEntrance12" component="msProhibitedNudity" interface="pProhibitedNudity"/>
        <port id="pEntrance13" component="msBeautyProject" interface="pBeautyProject"/>
        <port id="pEntrance14" component="msFortSand" interface="pFortSand"/>
        <port id="pEntrance15" component="msHerbsterReservoir" interface="pHerbsterReservoir"/>
        <port id="pEntrance16" component="msPenhaPark" interface="pPenhaPark"/>
        <port id="pEntrance17" component="msThirdPlane" interface="pThirdPlane"/>
        <port id="pEntrance18" component="msFreshwaterRiver" interface="pFreshwaterRiver"/>
        	
    	<!-- mission in the water reservoir -->
    	<context id="msWaterReservoir">
            <port id="pWaterReservoir" component="locWaterReservoir"/>
            <property name="mandatory" value="true"/>
            <property name="occurrence" value="unbounded"/>
            <property name="visibility" value="true"/>

            <media id="locWaterReservoir" type="application/gml+xml" src="media/waterReservoir.gml"/>
            <media id="mdText1" type="text/plain" src="media/text01.txt"/>

            <link xconnector="space#onEnteringStart">
                <bind role="onEntering" component="locWaterReservoir"/>
                <bind role="start" component="mdText1"/>
            </link>
    	</context>
    	
    	<!-- mission in the manhole cover-->
    	<context id="msManholeCover">
            <port id="pManholeCover" component="locManholeCover"/>
            <property name="mandatory" value="true"/>
            <property name="occurrence" value="unbounded"/>
            <property name="visibility" value="true"/>

            <media id="locManholeCover" type="application/gml+xml" src="media/manholeCover.gml"/>
            <media id="mdText2" type="text/plain" src="media/text02.txt"/>

            <link xconnector="space#onEnteringStart">
                <bind role="onEntering" component="locManholeCover"/>
                <bind role="start" component="mdText2"/>
            </link>
    	</context>
    	
    	<!-- mission in the palace fountain -->
    	<context id="msPalaceFountain">
            <port id="pPalaceFountain" component="locPalaceFountain"/>
            <property name="mandatory" value="true"/>
            <property name="occurrence" value="unbounded"/>
            <property name="visibility" value="true"/>
            
            <media id="locPalaceFountain" type="application/gml+xml" src="media/palaceFountain.gml"/>
            <media id="mdText3" type="text/plain" src="media/text03.txt"/>

            <link xconnector="space#onEnteringStart">
                <bind role="onEntering" component="locPalaceFountain"/>
                <bind role="start" component="mdText3"/>
            </link>
    	</context>
    	
    	<!-- mission in the water collection -->
    	<context id="msWaterCollection">
            <port id="pWaterCollection" component="locWaterCollection"/>
            <property name="mandatory" value="true"/>
            <property name="occurrence" value="unbounded"/>
            <property name="visibility" value="true"/>

            <media id="locWaterCollection" type="application/gml+xml" src="media/waterCollection.gml"/>
            <media id="mdText4" type="text/plain" src="media/text04.txt"/>

            <link xconnector="space#onEnteringStart">
                <bind role="onEntering" component="locWaterCollection"/>
                <bind role="start" component="mdText4"/>
            </link>
    	</context>

        <!-- mission in the parnassus -->
        <context id="msParnassus">
            <port id="pParnassus" component="locParnassus"/>
            <property name="mandatory" value="true"/>
            <property name="occurrence" value="unbounded"/>
            <property name="visibility" value="true"/>

            <media id="locParnassus" type="application/gml+xml" src="media/parnassus.gml"/>
            <media id="mdText5" type="text/plain" src="media/text05.txt"/>

            <link xconnector="space#onEnteringStart">
                <bind role="onEntering" component="locParnassus"/>
                <bind role="start" component="mdText5"/>
            </link>
        </context>

        <!-- mission in the pajeu park -->
        <context id="msPajeuPark">
            <port id="pPajeuPark" component="locPajeuPark"/>
            <property name="mandatory" value="true"/>
            <property name="occurrence" value="unbounded"/>
            <property name="visibility" value="true"/>

            <media id="locPajeuPark" type="application/gml+xml" src="media/pajeuPark.gml"/>
            <media id="mdText6" type="text/plain" src="media/text06.txt"/>

            <link xconnector="space#onEnteringStart">
                <bind role="onEntering" component="locPajeuPark"/>
                <bind role="start" component="mdText6"/>
            </link>
        </context>

        <!-- mission in the fetid exhalations -->
        <context id="msFetidExhalations">
            <port id="pFetidExhalations" component="locFetidExhalations"/>
            <property name="mandatory" value="true"/>
            <property name="occurrence" value="unbounded"/>
            <property name="visibility" value="true"/>

            <media id="locFetidExhalations" type="application/gml+xml" src="media/fetidExhalations.gml"/>
            <media id="mdText7" type="text/plain" src="media/text07.txt"/>

            <link xconnector="space#onEnteringStart">
                <bind role="onEntering" component="locFetidExhalations"/>
                <bind role="start" component="mdText7"/>
            </link>
        </context>

        <!-- mission in the ruin of the dam -->
        <context id="msRuinDam">
            <port id="pRuinDam" component="locRuinDam"/>
            <property name="mandatory" value="true"/>
            <property name="occurrence" value="unbounded"/>
            <property name="visibility" value="true"/>

            <media id="locRuinDam" type="application/gml+xml" src="media/ruinDam.gml"/>
            <media id="mdText8" type="text/plain" src="media/text08.txt"/>

            <link xconnector="space#onEnteringStart">
                <bind role="onEntering" component="locRuinDam"/>
                <bind role="start" component="mdText8"/>
            </link>
        </context>

        <!-- mission in the sculpture park -->
        <context id="msSculpturePark">
            <port id="pSculpturePark" component="locSculpturePark"/>
            <property name="mandatory" value="true"/>
            <property name="occurrence" value="unbounded"/>
            <property name="visibility" value="true"/>

            <media id="locSculpturePark" type="application/gml+xml" src="media/sculpturePark.gml"/>
            <media id="mdText9" type="text/plain" src="media/text09.txt"/>

            <link xconnector="space#onEnteringStart">
                <bind role="onEntering" component="locSculpturePark"/>
                <bind role="start" component="mdText9"/>
            </link>
        </context>

        <!-- mission in the chamber postures of 1835 -->
        <context id="msChamberPosturesA">
            <port id="pChamberPosturesA" component="locChamberPosturesA"/>
            <property name="mandatory" value="true"/>
            <property name="occurrence" value="unbounded"/>
            <property name="visibility" value="true"/>

            <media id="locChamberPosturesA" type="application/gml+xml" src="media/chamberPosturesA.gml"/>
            <media id="mdText10" type="text/plain" src="media/text10.txt"/>

            <link xconnector="space#onEnteringStart">
                <bind role="onEntering" component="locChamberPosturesA"/>
                <bind role="start" component="mdText10"/>
            </link>
        </context>

        <!-- mission in the chamber postures of 1844 -->
        <context id="msChamberPosturesB">
            <port id="pChamberPosturesB" component="locChamberPosturesB"/>
            <property name="mandatory" value="true"/>
            <property name="occurrence" value="unbounded"/>
            <property name="visibility" value="true"/>

            <media id="locChamberPosturesB" type="application/gml+xml" src="media/chamberPosturesB.gml"/>
            <media id="mdText11" type="text/plain" src="media/text11.txt"/>

            <link xconnector="space#onEnteringStart">
                <bind role="onEntering" component="locChamberPosturesB"/>
                <bind role="start" component="mdText11"/>
            </link>
        </context>

        <!-- mission forbidden to appear naked -->
        <context id="msProhibitedNudity">
            <port id="pProhibitedNudity" component="locProhibitedNudity"/>
            <property name="mandatory" value="true"/>
            <property name="occurrence" value="unbounded"/>
            <property name="visibility" value="true"/>

            <media id="locProhibitedNudity" type="application/gml+xml" src="media/prohibitedNudity.gml"/>
            <media id="mdText12" type="text/plain" src="media/text12.txt"/>

            <link xconnector="space#onEnteringStart">
                <bind role="onEntering" component="locProhibitedNudity"/>
                <bind role="start" component="mdText12"/>
            </link>
        </context>

        <!-- mission beautiful center project -->
        <context id="msBeautyProject">
            <port id="pBeautyProject" component="locBeautyProject"/>
            <property name="mandatory" value="true"/>
            <property name="occurrence" value="unbounded"/>
            <property name="visibility" value="true"/>

            <media id="locBeautyProject" type="application/gml+xml" src="media/beautyProject.gml"/>
            <media id="mdText13" type="text/plain" src="media/text13.txt"/>

            <link xconnector="space#onEnteringStart">
                <bind role="onEntering" component="locBeautyProject"/>
                <bind role="start" component="mdText13"/>
            </link>
        </context>

        <!-- mission in the fort sand -->
        <context id="msFortSand">
            <port id="pFortSand" component="locFortSand"/>
            <property name="mandatory" value="true"/>
            <property name="occurrence" value="unbounded"/>
            <property name="visibility" value="true"/>

            <media id="locFortSand" type="application/gml+xml" src="media/fortSand.gml"/>
            <media id="mdText14" type="text/plain" src="media/text14.txt"/>

            <link xconnector="space#onEnteringStart">
                <bind role="onEntering" component="locFortSand"/>
                <bind role="start" component="mdText14"/>
            </link>
        </context>

        <!-- mission in the herbster reservoir -->
        <context id="msHerbsterReservoir">
            <port id="pHerbsterReservoir" component="locHerbsterReservoir"/>
            <property name="mandatory" value="true"/>
            <property name="occurrence" value="unbounded"/>
            <property name="visibility" value="true"/>

            <media id="locHerbsterReservoir" type="application/gml+xml" src="media/herbsterReservoir.gml"/>
            <media id="mdText15" type="text/plain" src="media/text15.txt"/>

            <link xconnector="space#onEnteringStart">
                <bind role="onEntering" component="locHerbsterReservoir"/>
                <bind role="start" component="mdText15"/>
            </link>
        </context>

        <!-- mission in the penha gardem park -->
        <context id="msPenhaPark">
            <port id="pPenhaPark" component="locPenhaPark"/>
            <property name="mandatory" value="true"/>
            <property name="occurrence" value="unbounded"/>
            <property name="visibility" value="true"/>

            <media id="locPenhaPark" type="application/gml+xml" src="media/penhaPark.gml"/>
            <media id="mdText16" type="text/plain" src="media/text16.txt"/>

            <link xconnector="space#onEnteringStart">
                <bind role="onEntering" component="locPenhaPark"/>
                <bind role="start" component="mdText16"/>
            </link>
        </context>

        <!-- mission third plane -->
        <context id="msThirdPlane">
            <port id="pThirdPlane" component="locThirdPlane"/>
            <property name="mandatory" value="true"/>
            <property name="occurrence" value="unbounded"/>
            <property name="visibility" value="true"/>

            <media id="locThirdPlane" type="application/gml+xml" src="media/thirdPlane.gml"/>
            <media id="mdText17" type="text/plain" src="media/text17.txt"/>

            <link xconnector="space#onEnteringStart">
                <bind role="onEntering" component="locThirdPlane"/>
                <bind role="start" component="mdText17"/>
            </link>
        </context>

        <!-- mission beautiful freshwater river -->
        <context id="msFreshwaterRiver">
            <port id="pFreshwaterRiver" component="locFreshwaterRiver"/>
            <property name="mandatory" value="true"/>
            <property name="occurrence" value="unbounded"/>
            <property name="visibility" value="true"/>

            <media id="locFreshwaterRiver" type="application/gml+xml" src="media/freshwaterRiver.gml"/>
            <media id="mdText18" type="text/plain" src="media/text18.txt"/>

            <link xconnector="space#onEnteringStart">
                <bind role="onEntering" component="locFreshwaterRiver"/>
                <bind role="start" component="mdText18"/>
            </link>
        </context>
    </body>
</ncl>