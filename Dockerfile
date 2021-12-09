# Step 1: Use an existing docker image as a base
FROM alpine

# Step 2: Download and install dependency (apk add are Linux Commands, not Docker Commands)

RUN apk add --update redis
RUN apk add --update git


# Step 3: Tell the image what to do when it starts as container

CMD ["redis-server"]