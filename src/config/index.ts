import developmentConfig from './development';
import testConfig from './test';
import productionConfig from './production';

const configs = {
    development: developmentConfig,
    test: testConfig,
    production: productionConfig,
};
const env = process.env.NODE_ENV || 'development';

export default () => configs[env];
