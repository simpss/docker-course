package grails.scaling

class IndexController {

    def uuidService;
    def visitorService;

    def index() {
        UUID uuid = this.uuidService.getUuid();
        this.visitorService.newVisitEvent();
        render(view: "index", model: [uuid: uuid, counter: this.visitorService.getVisitCount()]);
    }
}
