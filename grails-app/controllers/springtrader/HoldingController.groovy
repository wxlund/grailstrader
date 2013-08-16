package springtrader

import org.springframework.dao.DataIntegrityViolationException

class HoldingController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        [holdingInstanceList: Holding.list(params), holdingInstanceTotal: Holding.count()]
    }

    def create() {
        [holdingInstance: new Holding(params)]
    }

    def save() {
        def holdingInstance = new Holding(params)
        if (!holdingInstance.save(flush: true)) {
            render(view: "create", model: [holdingInstance: holdingInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'holding.label', default: 'Holding'), holdingInstance.id])
        redirect(action: "show", id: holdingInstance.id)
    }

    def show(Long id) {
        def holdingInstance = Holding.get(id)
        if (!holdingInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'holding.label', default: 'Holding'), id])
            redirect(action: "list")
            return
        }

        [holdingInstance: holdingInstance]
    }

    def edit(Long id) {
        def holdingInstance = Holding.get(id)
        if (!holdingInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'holding.label', default: 'Holding'), id])
            redirect(action: "list")
            return
        }

        [holdingInstance: holdingInstance]
    }

    def update(Long id, Long version) {
        def holdingInstance = Holding.get(id)
        if (!holdingInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'holding.label', default: 'Holding'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (holdingInstance.version > version) {
                holdingInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'holding.label', default: 'Holding')] as Object[],
                          "Another user has updated this Holding while you were editing")
                render(view: "edit", model: [holdingInstance: holdingInstance])
                return
            }
        }

        holdingInstance.properties = params

        if (!holdingInstance.save(flush: true)) {
            render(view: "edit", model: [holdingInstance: holdingInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'holding.label', default: 'Holding'), holdingInstance.id])
        redirect(action: "show", id: holdingInstance.id)
    }

    def delete(Long id) {
        def holdingInstance = Holding.get(id)
        if (!holdingInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'holding.label', default: 'Holding'), id])
            redirect(action: "list")
            return
        }

        try {
            holdingInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'holding.label', default: 'Holding'), id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'holding.label', default: 'Holding'), id])
            redirect(action: "show", id: id)
        }
    }
}
