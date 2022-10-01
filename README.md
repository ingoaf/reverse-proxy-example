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

1. Build backend image: `docker build -t backend -f backend/backend.Dockerfile backend/`
2. Run backend container: `docker run -d --name=backend backend`
3. Build frontend image: `docker build -t frontend -f frontend/frontend.Dockerfile frontend/`
4. Run frontend container: `docker run -d --name=frontend frontend`
5. Create a network: `docker network create mynetwork`
6. Connect backend and frontend to the network:

   - `docker network connect mynetwork backend`
   - `docker network connect mynetwork frontend`

7. Build proxy image: `docker build -t proxy -f proxy/proxy.Dockerfile proxy/`
8. Run proxy container: `docker run -it -d -p 8080:8080 --network=mynetwork --name proxy proxy`
9. Go to `localhost:8080` - you should see a greeting page.
