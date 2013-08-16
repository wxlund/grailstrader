package springtrader



import org.junit.*
import grails.test.mixin.*

@TestFor(AccountProfileController)
@Mock(AccountProfile)
class AccountProfileControllerTests {

    def populateValidParams(params) {
        assert params != null
        // TODO: Populate valid properties like...
        //params["name"] = 'someValidName'
    }

    void testIndex() {
        controller.index()
        assert "/accountProfile/list" == response.redirectedUrl
    }

    void testList() {

        def model = controller.list()

        assert model.accountProfileInstanceList.size() == 0
        assert model.accountProfileInstanceTotal == 0
    }

    void testCreate() {
        def model = controller.create()

        assert model.accountProfileInstance != null
    }

    void testSave() {
        controller.save()

        assert model.accountProfileInstance != null
        assert view == '/accountProfile/create'

        response.reset()

        populateValidParams(params)
        controller.save()

        assert response.redirectedUrl == '/accountProfile/show/1'
        assert controller.flash.message != null
        assert AccountProfile.count() == 1
    }

    void testShow() {
        controller.show()

        assert flash.message != null
        assert response.redirectedUrl == '/accountProfile/list'

        populateValidParams(params)
        def accountProfile = new AccountProfile(params)

        assert accountProfile.save() != null

        params.id = accountProfile.id

        def model = controller.show()

        assert model.accountProfileInstance == accountProfile
    }

    void testEdit() {
        controller.edit()

        assert flash.message != null
        assert response.redirectedUrl == '/accountProfile/list'

        populateValidParams(params)
        def accountProfile = new AccountProfile(params)

        assert accountProfile.save() != null

        params.id = accountProfile.id

        def model = controller.edit()

        assert model.accountProfileInstance == accountProfile
    }

    void testUpdate() {
        controller.update()

        assert flash.message != null
        assert response.redirectedUrl == '/accountProfile/list'

        response.reset()

        populateValidParams(params)
        def accountProfile = new AccountProfile(params)

        assert accountProfile.save() != null

        // test invalid parameters in update
        params.id = accountProfile.id
        //TODO: add invalid values to params object

        controller.update()

        assert view == "/accountProfile/edit"
        assert model.accountProfileInstance != null

        accountProfile.clearErrors()

        populateValidParams(params)
        controller.update()

        assert response.redirectedUrl == "/accountProfile/show/$accountProfile.id"
        assert flash.message != null

        //test outdated version number
        response.reset()
        accountProfile.clearErrors()

        populateValidParams(params)
        params.id = accountProfile.id
        params.version = -1
        controller.update()

        assert view == "/accountProfile/edit"
        assert model.accountProfileInstance != null
        assert model.accountProfileInstance.errors.getFieldError('version')
        assert flash.message != null
    }

    void testDelete() {
        controller.delete()
        assert flash.message != null
        assert response.redirectedUrl == '/accountProfile/list'

        response.reset()

        populateValidParams(params)
        def accountProfile = new AccountProfile(params)

        assert accountProfile.save() != null
        assert AccountProfile.count() == 1

        params.id = accountProfile.id

        controller.delete()

        assert AccountProfile.count() == 0
        assert AccountProfile.get(accountProfile.id) == null
        assert response.redirectedUrl == '/accountProfile/list'
    }
}
