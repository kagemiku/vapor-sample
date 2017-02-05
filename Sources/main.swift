import Vapor

let drop = Droplet()

drop.get("/") { request in
    return "Hello, Vapor!"
}

drop.run()
