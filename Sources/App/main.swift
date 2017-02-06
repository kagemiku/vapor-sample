import Vapor

let drop = Droplet()

drop.get { req in
    return try drop.view.make("welcome", [
        "message": drop.localization[req.lang, "welcome", "title"]
    ])
}

drop.get("hello") { req in
    guard let name = req.data["name"]?.string else {
        throw Abort.badRequest
    }
    return try JSON(node: [
        "message": "Hello, \(name)!"
    ])
}

drop.post("json") { req in
    guard let name = req.json?["name"]?.string else {
        throw Abort.badRequest
    }
    return "Hello, \(name)!"
}

drop.resource("posts", PostController())

drop.run()
