package grails.scaling

import grails.transaction.Transactional

@Transactional
class VisitorService {
    private int visits = 0;

    int getVisitCount() {
        return this.visits;
    }

    void newVisitEvent() {
        this.visits++;
    }
}
