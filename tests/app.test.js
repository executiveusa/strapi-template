describe('Strapi Template', () => {
  it('should pass basic test', () => {
    expect(true).toBe(true);
  });

  it('should have package.json', () => {
    const pkg = require('../package.json');
    expect(pkg.name).toBe('strapi-template');
  });
});
