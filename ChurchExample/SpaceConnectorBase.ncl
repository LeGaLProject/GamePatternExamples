<?xml version="1.0" encoding="ISO-8859-1"?>
<ncl id="composerConnBase" xmlns="http://www.ncl.org.br/NCL3.0/CausalConnectorProfile" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:schemaLocation="http://www.ncl.org.br/NCL3.0/CausalConnectorProfile http://www.ncl.org.br/NCL3.0/profiles/NCL30CausalConnector.xsd">
	<head>
		<connectorBase>

			<!-- OnEntering -->
			<causalConnector id="onEnteringStart">
				<simpleCondition role="onEntering"/>
				<simpleAction role="start"/>
			</causalConnector>
			
			<causalConnector id="onEnteringStop">
				<simpleCondition role="onEntering"/>
				<simpleAction role="stop"/>
			</causalConnector>
			
			<causalConnector id="onEnteringAbort">
				<simpleCondition role="onEntering"/>
				<simpleAction role="abort"/>
			</causalConnector>
			
			<causalConnector id="onEnteringPause">
				<simpleCondition role="onEntering"/>
				<simpleAction role="pause"/>
			</causalConnector>
			
			<causalConnector id="onEnteringResume">
				<simpleCondition role="onEntering"/>
				<simpleAction role="resume"/>
			</causalConnector>
			
			<causalConnector id="onEnteringSet">
				<connectorParam name="var"/>
				<simpleCondition role="onEntering"/>
				<simpleAction role="set" value="$var"/>
			</causalConnector>
		</connectorBase>
	</head>
</ncl>