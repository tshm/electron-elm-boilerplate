console.log('debugging app')

function startElectron () {
  console.log('open electron')
  global.url = 'http://localhost:8000/devel.html'
  require('./index.js')
}

startElectron()

