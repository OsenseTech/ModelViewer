import Vapor

func routes(_ app: Application) throws {
    app.get { req in
        return req.view.render("index", ["title": "Hello Vapor!"])
    }

    app.get("hello") { req -> String in
        return "Hello, world!"
    }
    
    app.get("arView") { req in
//        req.view.render("arView", ["model_chrome": "slipper", "model_ios": "slipper"])
        req.view.render("arView", ["model": "baked_mesh"])
    }
}
