import Vapor

let drop = Droplet()

drop.get { req in
    return try drop.view.make("posts", [
    	"message": drop.localization[req.lang, "welcome", "title"]
    ])
}

drop.resource("posts", PostController())

drop.run()
