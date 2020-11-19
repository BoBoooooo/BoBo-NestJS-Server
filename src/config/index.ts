import developmentConfig from './env/development'
import testConfig from './env/test'
import productionConfig from './env/production'

const configs = {
  development: developmentConfig,
  test: testConfig,
  production: productionConfig
}
const env = process.env.NODE_ENV || 'development'

export default () => configs[env]
