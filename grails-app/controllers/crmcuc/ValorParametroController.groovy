package crmcuc



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class ValorParametroController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond ValorParametro.list(params), model:[valorParametroInstanceCount: ValorParametro.count()]
    }

    def show(ValorParametro valorParametroInstance) {
        respond valorParametroInstance
    }

    def create() {
        respond new ValorParametro(params)
    }

    @Transactional
    def save(ValorParametro valorParametroInstance) {
        if (valorParametroInstance == null) {
            notFound()
            return
        }

        if (valorParametroInstance.hasErrors()) {
            respond valorParametroInstance.errors, view:'create'
            return
        }

        valorParametroInstance.save flush:true

        request.withFormat {
            form {
                flash.message = message(code: 'default.created.message', args: [message(code: 'valorParametroInstance.label', default: 'ValorParametro'), valorParametroInstance.id])
                redirect valorParametroInstance
            }
            '*' { respond valorParametroInstance, [status: CREATED] }
        }
    }

    def edit(ValorParametro valorParametroInstance) {
        respond valorParametroInstance
    }

    @Transactional
    def update(ValorParametro valorParametroInstance) {
        if (valorParametroInstance == null) {
            notFound()
            return
        }

        if (valorParametroInstance.hasErrors()) {
            respond valorParametroInstance.errors, view:'edit'
            return
        }

        valorParametroInstance.save flush:true

        request.withFormat {
            form {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'ValorParametro.label', default: 'ValorParametro'), valorParametroInstance.id])
                redirect valorParametroInstance
            }
            '*'{ respond valorParametroInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(ValorParametro valorParametroInstance) {

        if (valorParametroInstance == null) {
            notFound()
            return
        }

        valorParametroInstance.delete flush:true

        request.withFormat {
            form {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'ValorParametro.label', default: 'ValorParametro'), valorParametroInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'valorParametroInstance.label', default: 'ValorParametro'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
