package crmcuc



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class ParametroController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Parametro.list(params), model:[parametroInstanceCount: Parametro.count()]
    }

    def show(Parametro parametroInstance) {
        respond parametroInstance
    }

    def create() {
        respond new Parametro(params)
    }

    @Transactional
    def save(Parametro parametroInstance) {
        if (parametroInstance == null) {
            notFound()
            return
        }

        if (parametroInstance.hasErrors()) {
            respond parametroInstance.errors, view:'create'
            return
        }

        parametroInstance.save flush:true

        request.withFormat {
            form {
                flash.message = message(code: 'default.created.message', args: [message(code: 'parametroInstance.label', default: 'Parametro'), parametroInstance.id])
                redirect parametroInstance
            }
            '*' { respond parametroInstance, [status: CREATED] }
        }
    }

    def edit(Parametro parametroInstance) {
        respond parametroInstance
    }

    @Transactional
    def update(Parametro parametroInstance) {
        if (parametroInstance == null) {
            notFound()
            return
        }

        if (parametroInstance.hasErrors()) {
            respond parametroInstance.errors, view:'edit'
            return
        }

        parametroInstance.save flush:true

        request.withFormat {
            form {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Parametro.label', default: 'Parametro'), parametroInstance.id])
                redirect parametroInstance
            }
            '*'{ respond parametroInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Parametro parametroInstance) {

        if (parametroInstance == null) {
            notFound()
            return
        }

        parametroInstance.delete flush:true

        request.withFormat {
            form {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Parametro.label', default: 'Parametro'), parametroInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'parametroInstance.label', default: 'Parametro'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
