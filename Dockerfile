FROM node:10-slim as base

# This is going to be our working folder, where the source lives
WORKDIR /usr/src

# Each step of the docker file creates a temporary image which is cached
# These caches remain in place until the dockerfile changes, or file/folder in that step changes
# When one cache is invalidated, all others below are also invalidated,
# so it's good practice to copy your package file (or nuget, etc) first
# then restore.  That way, you'll have a cached image with with dependencies that
# prevents having to restore whenever your source files change
COPY package*.json ./

RUN npm install

# Now copy the rest
COPY . .

CMD [ "node", "index.js" ]