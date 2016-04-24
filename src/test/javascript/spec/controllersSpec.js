'use strict';

describe('Controllers Tests ', function () {

    beforeEach(module('myApp'));

    describe('LoginCtrl', function () {
        var $scope, $httpBackend;

        beforeEach(inject(function (_$httpBackend_, $rootScope, $controller) {
            $httpBackend = _$httpBackend_;
            $httpBackend.expectGET('resources/i18n/en.json').
            respond({});
            $httpBackend.expectGET('/spring-security-ldap/app/main/admin').
            respond({"preferences": {"lang": "en"}});
            $httpBackend.expectGET('/spring-security-ldap/app/main/applications').
            respond([{"id": 1, "username": "steve", "password": "pass"}]);

            $scope = $rootScope.$new();
            $controller('LoginCtrl', {$scope: $scope});
        }));

        it('should set users', function () {
            console.log('------> should set users');
            $httpBackend.flush();

            expect($scope.users).not.toBeUndefined();
            expect($scope.users[0]).not.toBeUndefined();
        });
    });

});
