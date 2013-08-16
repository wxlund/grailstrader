package springtrader

import org.springframework.dao.DataIntegrityViolationException

class AccountProfileController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        [accountProfileInstanceList: AccountProfile.list(params), accountProfileInstanceTotal: AccountProfile.count()]
    }

    def create() {
        [accountProfileInstance: new AccountProfile(params)]
    }

    def save() {
        def accountProfileInstance = new AccountProfile(params)
        if (!accountProfileInstance.save(flush: true)) {
            render(view: "create", model: [accountProfileInstance: accountProfileInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'accountProfile.label', default: 'AccountProfile'), accountProfileInstance.id])
        redirect(action: "show", id: accountProfileInstance.id)
    }

    def show(Long id) {
        def accountProfileInstance = AccountProfile.get(id)
        if (!accountProfileInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'accountProfile.label', default: 'AccountProfile'), id])
            redirect(action: "list")
            return
        }

        [accountProfileInstance: accountProfileInstance]
    }

    def edit(Long id) {
        def accountProfileInstance = AccountProfile.get(id)
        if (!accountProfileInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'accountProfile.label', default: 'AccountProfile'), id])
            redirect(action: "list")
            return
        }

        [accountProfileInstance: accountProfileInstance]
    }

    def update(Long id, Long version) {
        def accountProfileInstance = AccountProfile.get(id)
        if (!accountProfileInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'accountProfile.label', default: 'AccountProfile'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (accountProfileInstance.version > version) {
                accountProfileInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'accountProfile.label', default: 'AccountProfile')] as Object[],
                          "Another user has updated this AccountProfile while you were editing")
                render(view: "edit", model: [accountProfileInstance: accountProfileInstance])
                return
            }
        }

        accountProfileInstance.properties = params

        if (!accountProfileInstance.save(flush: true)) {
            render(view: "edit", model: [accountProfileInstance: accountProfileInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'accountProfile.label', default: 'AccountProfile'), accountProfileInstance.id])
        redirect(action: "show", id: accountProfileInstance.id)
    }

    def delete(Long id) {
        def accountProfileInstance = AccountProfile.get(id)
        if (!accountProfileInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'accountProfile.label', default: 'AccountProfile'), id])
            redirect(action: "list")
            return
        }

        try {
            accountProfileInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'accountProfile.label', default: 'AccountProfile'), id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'accountProfile.label', default: 'AccountProfile'), id])
            redirect(action: "show", id: id)
        }
    }
}
