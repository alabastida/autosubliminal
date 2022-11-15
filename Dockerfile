FROM python:3.8.0-slim-buster
RUN apt-get update && apt-get upgrade -y && apt-get install -y git build-essential
RUN git clone https://github.com/h3llrais3r/Auto-Subliminal.git
WORKDIR /Auto-Subliminal
ENV VIRTUAL_ENV=/Auto-Subliminal/.venv
RUN python3 -m venv $VIRTUAL_ENV
ENV PATH="$VIRTUAL_ENV/bin:$PATH"
EXPOSE 8083
CMD ["python","AutoSubliminal.py"]
