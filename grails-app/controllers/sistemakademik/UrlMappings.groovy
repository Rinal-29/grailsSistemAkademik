package sistemakademik

class UrlMappings {

    static mappings = {
        "/$controller/$action?/$id?(.$format)?"{
            constraints {
                // apply constraints here
            }
        }

        name languageId: "/id" {
            controller= "dashboard"
            action= "index"
        }

        name languageEn: "/en" {
            controller= "dashboard"
            action= "index"
        }

        "/en"(controller: "dashboard", action:"index") {
            lang = "en"
        }
        "/id"(controller: "dashboard", action: "index") {
            lang = "id"
        }

        "/"(controller: "dashboard", action: "index") {
            lang = "id"
        }

        "500"(view:'/error')
        "404"(view:'/notFound')
    }
}
