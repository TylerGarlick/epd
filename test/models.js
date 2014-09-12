require('chai').should();

var Area = require('../lib/models/area');

describe('Models', function () {

  describe('Area', function () {

    it('should be valid', function () {
      var area = new Area({
        name: "Some Area",
        isActive: true,
        userId: 10,
        createdBy: 10
      });
      area.should.be.ok;
      area.validate().should.be.ok;
      area.name.should.be.eql('Some Area');
    });

  });

});
