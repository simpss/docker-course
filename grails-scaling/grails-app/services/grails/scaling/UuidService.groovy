package grails.scaling

import grails.transaction.Transactional

@Transactional
class UuidService {

    private UUID uuid = UUID.randomUUID();

    def getUuid() {
        log.error("App UUID is: " + this.uuid.toString());
        return this.uuid;
    }
}
