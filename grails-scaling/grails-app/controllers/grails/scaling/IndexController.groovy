package grails.scaling

class IndexController {

    def uuidService;

    def index() {
        UUID uuid = this.uuidService.getUuid();
        render(view: "index", model: uuid);
    }
}
