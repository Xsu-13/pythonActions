# Stage 1: Test
FROM python:3.10-slim AS test-stage

WORKDIR /usr/src/app
COPY . .
RUN make install-dev

# Stage 2: Production
FROM python:3.10-slim AS prod

WORKDIR /usr/src/app
COPY . .
RUN make install

CMD make run