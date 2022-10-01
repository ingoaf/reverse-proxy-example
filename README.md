# Reverse proxy example

This is a small repository to get your feet wet with a reverse proxy.

## Prerequisites

- Docker

## Approach

We will launch a small node.js backend application followed by a small frontend application.

- The frontend will consist of an HTML file served by an nginx Server which will display a greeting.
- This greeting will be fetched from the backend API.
- Finally we will launch an nginx server which will serve as a reverse proxy.
- Thus, we will be able to reach our services through the reverse proxy as a single entrypoint

## Get Started

1. `docker compose up`
2. Go to `localhost:8080` - you should see a greeting page.
