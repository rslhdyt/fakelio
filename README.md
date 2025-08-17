# Twilio Mock Server

Twilio Mock Server is a lightweight mock implementation of Twilio APIs, designed for local development and testing. It leverages [WireMock](https://wiremock.org/) to simulate Twilio endpoints, so you can build and test your integrations without sending real requests to Twilio.

> Why does this project exist?  
> Because Twilio doesn't provide a sandbox environment—so I made my own! (If Twilio ever does, I'll finally get some sleep.)

## Available APIs

- Twilio APIs Customer Profiles
- Twilio APIs TrustHub

## How to use locally

1. Clone the repository
2. Run `docker compose up`
3. The mock server will be available at `http://localhost:8080`

## How to deploy using Kamal

1. Install Kamal
2. Run `kamal deploy`
