package springtrader



import org.junit.*
import grails.test.mixin.*

@TestFor(HoldingController)
@Mock(Holding)
class HoldingControllerTests {

    def populateValidParams(params) {
        assert params != null
        // TODO: Populate valid properties like...
        //params["name"] = 'someValidName'
    }

    void testIndex() {
        controller.index()
        assert "/holding/list" == response.redirectedUrl
    }

    void testList() {

        def model = controller.list()

        assert model.holdingInstanceList.size() == 0
        assert model.holdingInstanceTotal == 0
    }

    void testCreate() {
        def model = controller.create()

        assert model.holdingInstance != null
    }

    void testSave() {
        controller.save()

        assert model.holdingInstance != null
        assert view == '/holding/create'

        response.reset()

        populateValidParams(params)
        controller.save()

        assert response.redirectedUrl == '/holding/show/1'
        assert controller.flash.message != null
        assert Holding.count() == 1
    }

    void testShow() {
        controller.show()

        assert flash.message != null
        assert response.redirectedUrl == '/holding/list'

        populateValidParams(params)
        def holding = new Holding(params)

        assert holding.save() != null

        params.id = holding.id

        def model = controller.show()

        assert model.holdingInstance == holding
    }

    void testEdit() {
        controller.edit()

        assert flash.message != null
        assert response.redirectedUrl == '/holding/list'

        populateValidParams(params)
        def holding = new Holding(params)

        assert holding.save() != null

        params.id = holding.id

        def model = controller.edit()

        assert model.holdingInstance == holding
    }

    void testUpdate() {
        controller.update()

        assert flash.message != null
        assert response.redirectedUrl == '/holding/list'

        response.reset()

        populateValidParams(params)
        def holding = new Holding(params)

        assert holding.save() != null

        // test invalid parameters in update
        params.id = holding.id
        //TODO: add invalid values to params object

        controller.update()

        assert view == "/holding/edit"
        assert model.holdingInstance != null

        holding.clearErrors()

        populateValidParams(params)
        controller.update()

        assert response.redirectedUrl == "/holding/show/$holding.id"
        assert flash.message != null

        //test outdated version number
        response.reset()
        holding.clearErrors()

        populateValidParams(params)
        params.id = holding.id
        params.version = -1
        controller.update()

        assert view == "/holding/edit"
        assert model.holdingInstance != null
        assert model.holdingInstance.errors.getFieldError('version')
        assert flash.message != null
    }

    void testDelete() {
        controller.delete()
        assert flash.message != null
        assert response.redirectedUrl == '/holding/list'

        response.reset()

        populateValidParams(params)
        def holding = new Holding(params)

        assert holding.save() != null
        assert Holding.count() == 1

        params.id = holding.id

        controller.delete()

        assert Holding.count() == 0
        assert Holding.get(holding.id) == null
        assert response.redirectedUrl == '/holding/list'
    }
}
