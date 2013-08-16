package springtrader

import org.springframework.dao.DataIntegrityViolationException

class QuoteController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        [quoteInstanceList: Quote.list(params), quoteInstanceTotal: Quote.count()]
    }

    def create() {
        [quoteInstance: new Quote(params)]
    }

    def save() {
        def quoteInstance = new Quote(params)
        if (!quoteInstance.save(flush: true)) {
            render(view: "create", model: [quoteInstance: quoteInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'quote.label', default: 'Quote'), quoteInstance.id])
        redirect(action: "show", id: quoteInstance.id)
    }

    def show(Long id) {
        def quoteInstance = Quote.get(id)
        if (!quoteInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'quote.label', default: 'Quote'), id])
            redirect(action: "list")
            return
        }

        [quoteInstance: quoteInstance]
    }

    def edit(Long id) {
        def quoteInstance = Quote.get(id)
        if (!quoteInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'quote.label', default: 'Quote'), id])
            redirect(action: "list")
            return
        }

        [quoteInstance: quoteInstance]
    }

    def update(Long id, Long version) {
        def quoteInstance = Quote.get(id)
        if (!quoteInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'quote.label', default: 'Quote'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (quoteInstance.version > version) {
                quoteInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'quote.label', default: 'Quote')] as Object[],
                          "Another user has updated this Quote while you were editing")
                render(view: "edit", model: [quoteInstance: quoteInstance])
                return
            }
        }

        quoteInstance.properties = params

        if (!quoteInstance.save(flush: true)) {
            render(view: "edit", model: [quoteInstance: quoteInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'quote.label', default: 'Quote'), quoteInstance.id])
        redirect(action: "show", id: quoteInstance.id)
    }

    def delete(Long id) {
        def quoteInstance = Quote.get(id)
        if (!quoteInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'quote.label', default: 'Quote'), id])
            redirect(action: "list")
            return
        }

        try {
            quoteInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'quote.label', default: 'Quote'), id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'quote.label', default: 'Quote'), id])
            redirect(action: "show", id: id)
        }
    }
}
