#!/usr/bin/env node

const fetch = require('node-fetch')

const BASE_URL = 'https://pro-api.coinmarketcap.com/v2'

const API_KEY = '96592967-3266-4094-8b0a-5109bb17065b'

const pair = `${BASE_URL}/cryptocurrency/quotes/latest?symbol=${process.argv[2]}&convert=${process.argv[3]}`

async function main() {
  let url = ''
  let pair_name = ''

  switch(process.argv[4]) {
    case 'pair':
      url = pair
      pair_name = `${process.argv[2]}/${process.argv[3]}`

      break
    default:
      break
  }

  const res = await fetch(url, {
    headers: {
      'X-CMC_PRO_API_KEY': API_KEY,
      Accept: 'application/json'
    }
  })

  const { data } = await res.json()

  const quote = data[process.argv[2]][0].quote[process.argv[3]]

  console.log(`${quote.percent_change_1h > 0 ? '' : ''} ${pair_name}: $${quote.price.toFixed(2)}`)
}

main()
