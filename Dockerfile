FROM alpine

WORKDIR /Robot-1
COPY . /Robot-1

# RUN apk upgrade
RUN apk add --no-cache --update \
    bash \
    chromium chromium-chromedriver \
    python3 \
    py3-pip

RUN apk add gcc musl-dev python3-dev libffi-dev openssl-dev cargo

RUN pip3 install \
    # --upgrade pip \
    robotframework \
    robotframework-seleniumlibrary 
# 	robotframework-browsermobproxylibrary \
# 	robotframework-requests

RUN chmod -R 775 /usr/lib/chromium
# RUN chmod -R 775 /Robot-1/run.sh

# ENV CHROME_BIN=/usr/bin/chromium-browser \
#     CHROME_PATH=/usr/lib/chromium/

# ENTRYPOINT /Robot-1/run.sh