class Connector {
	let host: String?
	let port: Int?

	init(host: String?, port: Int?) {
		self.host = host
		self.port = port
	}

	func connect() {

	}
}

class ConnectorBuilder {
	var connector = Connector(host: nil, port: nil)

	func set(host: String) -> Self {
		connector = Connector(host: host, port: connector.port)

		return self
	}

	func set(port: Int) -> Self {
		connector = Connector(host: connector.host, port: port)

		return self
	}

	func build() -> Connector {
		return connector
	}
 }

let readyToUseConnector = ConnectorBuilder().set(host: "mihost.com").set(port: 80).build()

readyToUseConnector.connect()